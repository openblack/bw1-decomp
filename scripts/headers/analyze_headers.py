import ast
import itertools
import json
import os
import re
import sys
from dataclasses import dataclass, asdict, field
from pathlib import Path
from typing import List, Tuple, Set, Optional, Dict, Union

from clang.cindex import TranslationUnit, Diagnostic, Config, Token, TranslationUnitLoadError


TYPES_TO_IGNORE = {
    "RTL_CRITICAL_SECTION",
}


FUNCS_TO_IGNORE = {
    "__RTDynamicCast", # part of libcmt
    "__RTTypeName", # part of libcmt
    "clampf", # util
    "saturatef", # util
    "clampi", # util
}


TYPE_SUBSTITUTION_MAP = {
    "_Bool": "bool",
    "struct FixedObject": "struct Fixed",
    "FixedObject": "Fixed",
}


def fixup_type(typename: str):
    for old, new in TYPE_SUBSTITUTION_MAP.items():
        if typename.startswith(old):
            typename = typename.replace(old, new, 1)
            break
    return typename


def demangle_type(mangled_type_name: str) -> str:
    if len(mangled_type_name) > 2 and mangled_type_name[0] == 'Q':
        parts = []
        num_namespaces = int(mangled_type_name[1])
        index = 2
        for _ in range(num_namespaces):
            l = re.match(r"\d+", mangled_type_name[index:]).group(0)
            m = re.match(r"\d+(\w{%s})" % l, mangled_type_name[index:])
            index += len(m.group(0))
            parts.append(m.group(1))
        return "::".join(parts)
    return mangled_type_name

@dataclass
class FunctionMetadata:
    win_addr: str
    mac_addr: str
    decorated_name: str
    undecorated_name: Optional[str] = None
    mangled_name: Optional[str] = None
    return_type: Optional[str] = None
    call_type: Optional[str] = None
    argument_types: List[str] = field(default_factory=list)
    argument_names: List[str] = field(default_factory=list)
    is_function_variadic: bool = False

    def is_subtype(candidate, target, class_hierarchies):
        return candidate in class_hierarchies[target]

    def fastcall_is_thiscall(self, class_hierarchies) -> bool:
        if self.call_type != "__fastcall":
            return False
        if len(self.argument_types) < 1:
            return False
        this_candidate = self.argument_types[0].removeprefix("const ")
        if not this_candidate.endswith("*"):
            return False
        this_candidate = this_candidate.removesuffix(" *")
        if not this_candidate.startswith("struct "):
            return False
        this_candidate = this_candidate.removeprefix("struct ")
        split_decorated = self.decorated_name.split("(")[0].split(" ")[0].split("::")
        if len(split_decorated) <= 1:
            return False
        decorated = "::".join(map(fixup_type, split_decorated[:-1]))
        this_candidate_demangled = demangle_type(this_candidate)
        if this_candidate_demangled in class_hierarchies.get(decorated, [decorated]):
            if this_candidate_demangled != decorated:
                self.argument_types[0] = self.argument_types[0].replace(this_candidate_demangled, decorated)
        else:
            # Remove template part if there is one
            m = re.match(r'(\w+)<[\d\w]+>', decorated)
            if m:
                if demangle_type(this_candidate) not in (m.group(1), decorated.replace("<", "_").replace(">", "_")):
                    return False
            else:
                return False
        if len(self.argument_types) > 1:
            edx_candidate_type, edx_candidate_name = self.argument_types[1], self.argument_names[1]
            edx_candidate_type = edx_candidate_type.removeprefix("const ")
            if edx_candidate_name not in ["", "edx"]:
                return False
            if edx_candidate_type != "void *":
                return False
        return True

    def consolidate_thiscall(self, class_hierarchies):
        if self.fastcall_is_thiscall(class_hierarchies):
            self.call_type = "__thiscall"
            if len(self.argument_types) > 1:
                self.argument_types.pop(1)
                self.argument_names.pop(1)


@dataclass
class TypeInfo:
    kind_name: str
    size: int
    location: Path
    children: Union[
        List[Tuple[str, Union[int, str]]],
        List[Tuple[str, str, int]],
        str,
        Tuple[str, List[str], str]
    ] = field(default_factory=list)


@dataclass
class GlobalInfo:
    type_name: str
    win_addr: int
    mac_addr: Optional[int]
    decorated_name: Optional[str]
    msvc_mangled_name: Optional[str]


PATHS = [
    Path("black"),
    Path("libs"),
]

if sys.platform == "win32":
    llvm_bin = Path(r"C:\Program Files\LLVM\bin")
else:
    llvm_bin = Path(r"/usr/bin")
Config.set_library_path(str(llvm_bin))


def get_clang_resource_dir():
    from subprocess import check_output
    return check_output([llvm_bin / 'clang', '-print-resource-dir']).strip().decode('utf-8')


def parse_source(path: Optional[Path] = None, source: Optional[str] = None) -> TranslationUnit:
    assert path or source
    system_include_paths = [
        Path("/usr/x86_64-w64-mingw32/include"),
    ]
    ignored_warnings = ["visibility", "ignored-attributes", "int-conversion", "microsoft-enum-forward-reference",
                        "cast-calling-convention"]
    args = ["-m32", f"-resource-dir={get_clang_resource_dir()}"]
    if sys.platform != "win32":
        args.append("--target=i686-pc-windows-gnu")
    for p in system_include_paths:
        args.append(f"-isystem{p.as_posix()}")
        args.append(f"-I.")
    for p in PATHS:
        args.append(f"-I{p.as_posix()}")
    for warning in ignored_warnings:
        args.append(f"-Wno-{warning}")
    if source:
        try:
            translation_unit = TranslationUnit.from_source('tmp.c', args=args, unsaved_files=[('tmp.c', source)])
        except TranslationUnitLoadError as e:
            sys.stderr.write(f"tmp.c: {e}\n{source}\n")
            sys.stderr.flush()
            raise
    else:
        try:
            translation_unit = TranslationUnit.from_source(path.as_posix(), args=args)
        except TranslationUnitLoadError as e:
            sys.stderr.write(f"{path.as_posix()}: {e}\n")
            sys.stderr.flush()
            raise

    error_strings: List[str] = []
    for diagnostic in translation_unit.diagnostics:
        if diagnostic.severity >= Diagnostic.Error:
            error_strings.append(str(diagnostic))
        if diagnostic.severity >= Diagnostic.Warning:
            sys.stderr.write(f"{diagnostic}\n")

    if error_strings:
        sys.stderr.flush()
        raise RuntimeError("Error parsing source:\n\t" + "\n\t".join(error_strings))

    return translation_unit


def extract_function_pointers(struct_type) -> Dict[str, Tuple[TypeInfo, int]]:
    function_map: Dict[str, TypeInfo] = {}
    for t in struct_type.get_fields():
        underlying_type = t.type
        pointer_depth = 0
        while underlying_type.kind.name == "POINTER":
            pointer_depth += 1
            underlying_type = underlying_type.get_pointee()

        if pointer_depth == 0 or underlying_type.kind.name != "FUNCTIONPROTO":
            continue

        result = underlying_type.get_result().spelling
        args = list(c.spelling for c in underlying_type.argument_types())
        arg_names = list(c.spelling for c in t.get_definition().get_children() if c.kind.name == 'PARM_DECL')
        if len(arg_names) == 0:
            arg_names = [''] * len(args)
        assert(len(args) == len(arg_names))
        function_map[t.spelling] = (TypeInfo(kind_name=underlying_type.kind.name, size=t.type.get_size(),
                                            location=Path(t.location.file.name), children=(result, list(zip(args, arg_names)), underlying_type.spelling)), pointer_depth)
    return function_map


def extract_type_info(tu: TranslationUnit) -> Tuple[bool, Dict[str, TypeInfo]]:
    found_issues = False
    types: Dict[str, TypeInfo] = {}
    for c in tu.cursor.get_children():
        if c.kind.name in ["STRUCT_DECL", "UNION_DECL", "ENUM_DECL", "TYPEDEF_DECL"] and c.is_definition():
            struct_type = c.type
            if struct_type.spelling in types:
                # sys.stderr.write(f"duplicate type: \"{struct_type.spelling}\"\n")
                # found_issues = True
                # continue
                pass
            name = struct_type.spelling
            kind_name: str = c.kind.name
            children: List[Tuple[str, int] | Tuple[str, str, int]] | str | Tuple[str, List[str], str] = []
            if c.kind.name == "STRUCT_DECL":
                extra_types = extract_function_pointers(struct_type)
                types.update((f"{name.removeprefix("struct ")}__{k}", v[0]) for k, v in extra_types.items())
                children = []
                for f in struct_type.get_fields():
                    child_name = f.spelling
                    child_type = f.type.spelling
                    if f.type.kind.name == "CONSTANTARRAY":
                        # Try to preserve enum constants as array sizes
                        array_children = list(filter(lambda x: x.kind.name == "DECL_REF_EXPR", f.get_children()))
                        if array_children:
                            assert(child_type.count("[") == 1)
                            assert(child_type.count("]") == 1)
                            assert(len(array_children) == 1)
                            child_type = re.sub(r"\[\d+\]", f"[{array_children[0].spelling}]", child_type)
                    if child_name in extra_types:
                        child_type = f"{name.removeprefix("struct ")}__{child_name} *"
                    child_offset = struct_type.get_offset(f.spelling) // 8
                    children.append((child_name, child_type, child_offset))
                pass
            elif c.kind.name == "UNION_DECL":
                children = []
                for f in struct_type.get_fields():
                    child_name = f.spelling
                    child_type = f.type.spelling
                    children.append((child_name, child_type))
                # found_issues = True
                # sys.stderr.write(f"TODO: Union: {c.spelling}\n")
                pass
            elif c.kind.name == "TYPEDEF_DECL":
                children = struct_type.get_canonical().spelling
                if struct_type.get_canonical().kind.name in ["FUNCTIONPROTO", "FUNCTIONNOPROTO"]:
                    struct_type = struct_type.get_canonical()
                    name = c.spelling
                    kind_name = "FUNCTIONPROTO"
                    result = struct_type.get_result().spelling
                    try:
                        args = list(a.spelling for a in struct_type.argument_types())
                    except AssertionError:
                        print(name)
                        print(struct_type.kind)
                        raise
                    arg_names = list(i.spelling for i in c.get_definition().get_children() if i.kind.name == 'PARM_DECL')
                    children = (result, list(zip(args, arg_names)), children)
            elif c.kind.name == "ENUM_DECL":
                children = [(e.spelling, e.enum_value) for e in c.get_children()]
            types[name] = TypeInfo(
                kind_name=kind_name,
                size=struct_type.get_size(),
                location=Path(c.location.file.name),
                children=children
            )
    return found_issues, types


def extract_globals_info(tu: TranslationUnit, known_types: Set[str]) -> Tuple[bool, Dict[str, GlobalInfo]]:
    mac_rtti_lookup = {
        "Ball": 0x107371dc,
        "CreatureRoom": 0x1098e5f0,
        "CameraModeFree": 0x1077708c,
        "GTribeInfo": 0x1075e974,
        "BaseInfo": 0x10745360,
        "SpellSeedGraphic": 0x109dbe4c,
        "GBallInfo": 0x10737af4,
        "CreatureInfo": 0x1077e340,
        "MobileWallHug": 0x10732c5c,
        "GDanceInfo": 0x1099548c,
        "MPFEChannelSelector": 0x109a250c,
        "GLanguage": 0x10733c04,
        "PileFood": 0x1074939c,
        "StoragePit": 0x10747800,
        "SingleMapFixed": 0x10740de0,
        "GSpecialVillagerInfo": 0x1075b7e4,
        "MobileStatic": 0x107387a4,
        "VillagerName": 0x109e9588,
        "DialogBoxImmersion": 0x109990a8,
        "PictureRoomBase": 0x10746f04,
        "DanceKeyFrame": 0x10997014,
        "CameraModeNew3": 0x10732de0,
        "GClimate": 0x109ea018,
        "LoadingBox": 0x109ed8d4,
        "SaveGameRoom": 0x109c207c,
        "GInterfaceFlags": 0x1099e274,
        "Heap": 0x10730a2c,
        "CreatureBeliefList": 0x10787474,
        "HandStateTug": 0x1099bc00,
        "GTownInfo": 0x109e35e4,
        "AllocatedBeliefList": 0x107874ac,
        "Citadel": 0x10779c40,
        "RegisterBox": 0x109ed854,
        "SpellIcon": 0x10733a6c,
        "SetupHSBarGraph": 0x10731040,
        "Scaffold": 0x1075a2f8,
        "SetupEdit": 0x10731154,
        "PuzzleGame": 0x10756934,
        "CreatureMentalDebug": 0x1078766c,
        "ChannelBox": 0x109a1fb0,
        "PSysManager": 0x109b86b8,
        "Workshop": 0x1075a25c,
        "TempleRoom": 0x10732ce8,
        "GFootpathNode": 0x10742ff0,
        "SpellShield": 0x1099f608,
        "CitadelPart": 0x107339ec,
        "CameraMode": 0x10732dcc,
        "GFootpathLink": 0x10743230,
        "HandStatePlayAnim": 0x1099b904,
        "GAlignment": 0x1077e184,
        "Reaction": 0x10759508,
        "PhysicsObject": 0x10746ec0,
        "DataForScriptRemind": 0x109a0de0,
        "TownDesire": 0x109e5838,
        "TerrainMapInfo": 0x10730b28,
        "LandscapeVortex": 0x1099b714,
        "GPlayer": 0x109bdcf4,
        "SetupStaticText": 0x107312e0,
        "Dance": 0x1074465c,
        "CDBox": 0x109ed714,
        "BigForest": 0x10783da4,
        "Flock": 0x10742990,
        "HelpProfile": 0x1099be34,
        "WorshipTotem": 0x1073a768,
        "GShowNeedsInfo": 0x1075b5a8,
        "CHand": 0x1077dbd8,
        "SetupColourPicker": 0x10730e58,
        "Morphable": 0x1073d0fc,
        "MagicFireBall": 0x109afc28,
        "ShowNeeds": 0x1075b608,
        "ChallengeRoom": 0x10777d4c,
        "CreatureMimicState": 0x1078751c,
        "CameraModeCtrInteract": 0x10777708,
        "MultiplayerDatabase": 0x10745c84,
        "GestureSystemData": 0x107330c0,
        "InnerCamera": 0x10777d9c,
        "Container": 0x10739750,
        "ScriptMarker": 0x109c17cc,
        "TerrainMapTypeInfo": 0x10730ad8,
        "Town": 0x1077dcc8,
        "MPFEChooseConnection": 0x109a2554,
        "InterfaceHandState": 0x1099e2ac,
        "GData": 0x10730b70,
        "GFootpath": 0x10743350,
        "HandStateCreature": 0x1073bc10,
        "SkipBox": 0x109ed6d4,
        "CreaturePreviousActions": 0x107875fc,
        "CreatureAttitudeToPlayer": 0x10783e38,
        "StandardBuildingSite": 0x10739334,
        "PlannedMultiMapFixed": 0x107340b0,
        "GJPSysInterface": 0x109b880c,
        "SetupMultiList": 0x107311c0,
        "FireFly": 0x1073f830,
        "GKeyBuffer": 0x10733c44,
        "GestureSystemDataList": 0x10733088,
        "TownDesireFlags": 0x1098d0cc,
        "CreatureObjectsInspected": 0x10787634,
        "GFieldTypeInfo": 0x1073ed24,
        "CreatureCommandState": 0x10787554,
        "GBaseInfo": 0x10730abc,
        "GStream": 0x1075dd20,
        "SetupTabButton": 0x10730f08,
        "CreatureMental": 0x1078743c,
        "PotStructure": 0x10747844,
        "StatsBox": 0x1099add0,
        "CreatureDatabase": 0x10745cbc,
        "HandStateCitadel": 0x1099b18c,
        "GPrayerIconInfo": 0x1074a620,
        "EffectValues": 0x10734728,
        "GParticleContainer": 0x107461ec,
        "RenderParticle": 0x109b6a34,
        "GMobileStaticInfo": 0x109acc58,
        "CitadelHeart": 0x1077b83c,
        "SetupList": 0x107311a4,
        "FishFarm": 0x107402f8,
        "GScript": 0x109c38c8,
        "InfluenceRing": 0x10744e50,
        "CreatureExplorationMap": 0x1098b8d8,
        "CreatureAgenda": 0x1078758c,
        "HandStateNormal": 0x1099b8cc,
        "SetupBigButton": 0x107310ac,
        "CameraModeFollow": 0x1077789c,
        "SpellWithObjects": 0x109a58f4,
        "LHOSFile": 0x1099a66c,
        "HelpText": 0x1099db6c,
        "MapShield": 0x109def60,
        "GestureSystem": 0x107330f8,
        "PlannedTownCentre": 0x109e3cf0,
        "MPFELogin": 0x109a3a28,
        "GSingleMapFixedInfo": 0x10740ce8,
        "CreaturePhysical": 0x1077e14c,
        "WorshipSpellIcon": 0x10733ab0,
        "CameraModeFollowHeading": 0x10777930,
        "Reward": 0x10759768,
        "BuildingSite": 0x107391b8,
        "SetupCheckBox": 0x10730d88,
        "FelledTree": 0x1073a888,
        "Fragment": 0x10746eac,
        "TotemStatue": 0x107871cc,
        "HelpSystem": 0x1099cab4,
        "SetupSlider": 0x10731254,
        "DancePathInfo": 0x10744cf0,
        "TattooEditor": 0x109ed754,
        "SetupStaticTextNoHit": 0x1099b094,
        "CreatureBeliefs": 0x109899cc,
        "Villager": 0x10732cdc,
        "SetupVBarGraph": 0x10730f60,
        "GLeashStatus": 0x109a0a54,
        "GameThingWithPos": 0x107313b0,
        "DanceGroup": 0x10996e7c,
        "Wonder": 0x107605fc,
        "DialogBoxOptions": 0x109990e8,
        "GWorshipSiteInfo": 0x109eb3b4,
        "GStreetLight": 0x109e1864,
        "WorshipSite": 0x10733a30,
        "LocalBase": 0x1099bd98,
        "StatsDatabase": 0x10745c98,
        "GSLobbyBox": 0x109edd0c,
        "Mist": 0x106f5f4c,
        "Object": 0x107313d4,
        "GAudio": 0x1077682c,
        "MultiMapFixed": 0x107339b0,
        "TownArtifact": 0x10736fe0,
        "PSysBase": 0x10746188,
        "ScriptHighlight": 0x109c45c8,
        "SetupBox": 0x10731360,
        "FireEffect": 0x1075c8a4,
        "SetupPicture": 0x10730eb0,
        "GBigForestInfo": 0x1073865c,
        "GTotemStatueInfo": 0x109e33a8,
        "PileResource": 0x107481fc,
        "Fixed": 0x1073397c,
        "ShowNeedsVisuals": 0x1075acf0,
        "PSysInterface": 0x107461ac,
        "TownCentre": 0x1077f15c,
        "LHReleasedOSFile": 0x1099a680,
        "SetupMP3Button": 0x10731104,
        "GTerrainMap": 0x10730ba8,
        "GMobileObjectInfo": 0x10736eec,
        "WeatherThing": 0x109ea360,
        "CameraModeDance": 0x10777774,
        "Living": 0x10732c98,
        "Cow": 0x1074b2d0,
        "NewProfileBox": 0x109ed914,
        "Mobile": 0x10732c28,
        "GVirtualInfluence": 0x1075e9c4,
        "SpecialVillager": 0x1073bc5c,
        "Totem": 0x10755f88,
        "DataPath": 0x109a0f04,
        "GInterfaceCollide": 0x10733130,
        "GInterface": 0x1099dd58,
        "CreatureDamageMap": 0x1077e114,
        "GameThing": 0x10731394,
        "GStreetLantern": 0x109e0fa4,
        "ProfileEditor": 0x109ed814,
        "GSoundMap": 0x109d7980,
        "MainMenu": 0x109ed7d4,
        "HandStateCamera": 0x1099b154,
        "GameOSFile": 0x1099a69c,
        "SoundTag": 0x109d7a40,
        "GVillagerStateTableInfo": 0x109e9f8c,
        "TownStats": 0x109e3664,
        "SetupControl": 0x10730d58,
        "CreaturePlan": 0x1098d1c0,
        "SetupHLineGraph": 0x10730fcc,
        "DeadTree": 0x1073a834,
        "GFootpathLinkSave": 0x10743110,
        "LHDLL": 0x109c41fc,
        "GVillagerInfo": 0x109e7800,
        "Tree": 0x1075df20,
        "HandStateInvisible": 0x1077db84,
        "DialogBoxSaveMessage": 0x10999130,
        "Rock": 0x107387e8,
        "OneOffSpellSeed": 0x1099eba8,
        "ValueSpinner": 0x10737b54,
        "PHandFX": 0x109b139c,
        "GInterfaceStatus": 0x1098d398,
        "LoginBox": 0x109ed794,
        "GTownDesireInfo": 0x109e57f0,
        "GatheringBox": 0x1099afbc,
        "GSpellIconInfo": 0x109dc3c4,
        "ScriptDLL": 0x109c4210,
        "GMagicEffectInfo": 0x1073d070,
        "LobbyBox": 0x109edd54,
        "AnimatedStatic": 0x10735450,
        "GTreeInfo": 0x1075e054,
        "CreatureSubAction": 0x1077e1bc,
        "GFootpathFinder": 0x10742ed0,
        "CreaturePreviousLesson": 0x107874e4,
        "HandStateGrain": 0x1099b3c0,
        "CreatureVisionState": 0x107873fc,
        "StartGameBox": 0x109ed694,
        "CreatureSubActionAgenda": 0x1077e1f4,
        "HandStateTotem": 0x1099ba34,
        "MPFEDatabase": 0x109a37c0,
        "CreatureBelief": 0x10989878,
        "Spell": 0x1075942c,
        "PileWood": 0x10748250,
        "GInterfaceMessageBuffer": 0x1099f8dc,
        "CameraModePath": 0x10777078,
        "GroupBehaviour": 0x10744630,
        "GMagicInfo": 0x10776ff0,
        "DialogBoxKeyBinding": 0x10998f98,
        "Creche": 0x10994094,
        "SetupButton": 0x10730d6c,
        "TownSpellIcon": 0x109e5998,
        "GObjectInfo": 0x10734630,
        "ReactionInfo": 0x1075963c,
        "HelpSpirit": 0x1099bee0,
        "MPFELoginDatabase": 0x109a39c4,
        "CreatureLearning": 0x107875c4,
        "HandStateMultiPickUp": 0x1099b58c,
        "CreatureDesires": 0x1098a9fc,
        "CameraModeTwoObjects": 0x109c3938,
        "GPlayerInfo": 0x10730be8,
        "SkirmishGameBox": 0x109ed654,
        "GArena": 0x10735f14,
        "Whale": 0x1075fc5c,
        "GCamera": 0x107770e8,
        "HandStateHolding": 0x1099b3a4,
        "Forest": 0x106f5e84,
        "GEffectInfo": 0x1073d04c,
        "LH3DStaticObject": 0x101ca668,
        "LH3DSpriteObject": 0x101cc748,
        "LH3DAnimatedObject": 0x101cc084,
        "LH3DMist": 0x101cd2bc,
        "LH3DComplexObject": 0x101cbdfc,
        "LHFile": 0x101da9ec,
        "LH3DCitadel": 0x101ca6c8,
        "LH3DMeshedObject": 0x101ca644,
        "Prss": 0x101cbc0c,
        "LH3DStaticMorphableObject": 0x101ca694,
        "LH3DObject": 0x101ca628,
        "LHReleasedFile": 0x101daa00,
        "Creature": 0x1077dda8,
        "EndGameBox": 0x1099ad1c,
        "Feature": 0x1073d268,
        "Field": 0x1073ee70,
        "GGame": 0x10732e00,
        "SpellWater": 0x109dacc8,
        "GWaterfall": 0x1075d4a0,
        "MobileObject": 0x106f3288,
        "HistoryBox": 0x109ed4ac,
        "Football": 0x109993e8,
        "BWGameSpy": 0x109edca4,
        "Pot": 0x10747720,
        "SpellSeed": 0x109dd91c,
        "Animal": 0x10761cd0,
        "MiniDialogBoxOptions": 0x10999048,
        "Mist": 0x10745708,
        "Forest": 0x107434e0,
        "GGameInfo": 0x1099a584,
        "Waypoint": 0x1075f65c,
        "GGuidance": 0x109d783c,
        "CreatureRoomCamera": 0x1098e6ec,
        "SpellShield": 0x109e09bc,
        "GameStats": 0x1099ab2c,
        "WeatherInfo": 0x109ea14c,
        "CameraModeCitadel": -1,
        "GCameraEditor": -1,
        "CameraModeNew2": -1,
        "CameraModeNew": -1,
        "CameraModeNew1": -1,
        "CameraModeFlyAndClick": -1,
        "MultiplayerConditionBox": -1,
    }
    mac_vftable_lookup = {
        "Ball": 0x107371e4,
        "CreatureRoom": 0x1098e5f8,
        "CameraModeFree": 0x106f6780,
        "GTribeInfo": 0x1075e97c,
        "BaseInfo": 0x10745368,
        "SpellSeedGraphic": 0x109dbe54,
        "GBallInfo": 0x10737afc,
        "CreatureInfo": 0x1077e348,
        "MobileWallHug": 0x10732c8c,
        "GDanceInfo": 0x10995494,
        "MPFEChannelSelector": 0x109a2514,
        "GLanguage": 0x10733c0c,
        "PileFood": 0x107493a4,
        "StoragePit": 0x106f604c,
        "SingleMapFixed": 0x10740de8,
        "GSpecialVillagerInfo": 0x1075b7ec,
        "MobileStatic": 0x107387dc,
        "VillagerName": 0x109e9590,
        "DialogBoxImmersion": 0x109990b0,
        "PictureRoomBase": 0x10746f0c,
        "DanceKeyFrame": 0x1099701c,
        "CameraModeNew3": 0x106f5b14,
        "GClimate": 0x109ea020,
        "LoadingBox": 0x109ed8dc,
        "SaveGameRoom": 0x109c2084,
        "GInterfaceFlags": 0x1099e27c,
        "Heap": 0x10730a34,
        "CreatureBeliefList": 0x1078747c,
        "HandStateTug": 0x1099bc08,
        "GTownInfo": 0x109e35ec,
        "AllocatedBeliefList": 0x107874b4,
        "Citadel": 0x10779c48,
        "RegisterBox": 0x109ed85c,
        "SpellIcon": 0x10733aa4,
        "SetupHSBarGraph": 0x10731048,
        "Scaffold": 0x1075a300,
        "SetupEdit": 0x1073115c,
        "PuzzleGame": 0x1075693c,
        "CreatureMentalDebug": 0x10787674,
        "ChannelBox": 0x109a1fb8,
        "PSysManager": 0x109b86c0,
        "Workshop": 0x106f651c,
        "TempleRoom": 0x106f5af8,
        "GFootpathNode": 0x10742ff8,
        "CitadelPart": 0x10733a24,
        "CameraMode": 0x106f5b10,
        "GFootpathLink": 0x10743238,
        "HandStatePlayAnim": 0x1099b90c,
        "GAlignment": 0x1077e18c,
        "Reaction": 0x10759510,
        "PhysicsObject": 0x10746ec8,
        "DataForScriptRemind": 0x109a0de8,
        "TownDesire": 0x109e5840,
        "TerrainMapInfo": 0x10730b30,
        "LandscapeVortex": 0x106f8abc,
        "GPlayer": 0x109bdcfc,
        "SetupStaticText": 0x107312e8,
        "Dance": 0x106f5ec0,
        "CDBox": 0x109ed71c,
        "BigForest": 0x106f7ce0,
        "Flock": 0x10742998,
        "HelpProfile": 0x1099be3c,
        "WorshipTotem": 0x106f5d3c,
        "GShowNeedsInfo": 0x1075b5b0,
        "CHand": 0x1077dbe0,
        "SetupColourPicker": 0x10730e60,
        "Morphable": 0x1073d10c,
        "MagicFireBall": 0x109afc30,
        "ShowNeeds": 0x1075b610,
        "ChallengeRoom": 0x10777d54,
        "CreatureMimicState": 0x10787524,
        "CameraModeCtrInteract": 0x106f67e8,
        "MultiplayerDatabase": 0x10745c8c,
        "GestureSystemData": 0x107330c8,
        "InnerCamera": 0x10777da4,
        "Container": 0x10739758,
        "ScriptMarker": 0x106fa474,
        "TerrainMapTypeInfo": 0x10730ae0,
        "Town": 0x106f6950,
        "MPFEChooseConnection": 0x109a255c,
        "InterfaceHandState": 0x1099e2b4,
        "GData": 0x10730b78,
        "GFootpath": 0x10743358,
        "HandStateCreature": 0x106f5d68,
        "SkipBox": 0x109ed6dc,
        "CreaturePreviousActions": 0x10787604,
        "CreatureAttitudeToPlayer": 0x10783e40,
        "StandardBuildingSite": 0x1073933c,
        "PlannedMultiMapFixed": 0x107340d0,
        "GJPSysInterface": 0x109b8814,
        "SetupMultiList": 0x107311c8,
        "FireFly": 0x106f5e14,
        "GKeyBuffer": 0x10733c4c,
        "GestureSystemDataList": 0x10733090,
        "TownDesireFlags": 0x106f814c,
        "CreatureObjectsInspected": 0x1078763c,
        "GFieldTypeInfo": 0x1073ed2c,
        "CreatureCommandState": 0x1078755c,
        "GBaseInfo": 0x10730acc,
        "GStream": 0x1075dd28,
        "SetupTabButton": 0x10730f10,
        "CreatureMental": 0x10787444,
        "PotStructure": 0x1074784c,
        "StatsBox": 0x1099add8,
        "CreatureDatabase": 0x10745cc4,
        "HandStateCitadel": 0x1099b194,
        "GPrayerIconInfo": 0x1074a628,
        "EffectValues": 0x10734730,
        "GParticleContainer": 0x107461f4,
        "RenderParticle": 0x109b6a54,
        "GMobileStaticInfo": 0x109acc60,
        "CitadelHeart": 0x1077b844,
        "SetupList": 0x107311b4,
        "FishFarm": 0x10740300,
        "GScript": 0x109c38d0,
        "InfluenceRing": 0x10744e58,
        "CreatureExplorationMap": 0x1098b8e0,
        "CreatureAgenda": 0x10787594,
        "HandStateNormal": 0x1099b8d4,
        "SetupBigButton": 0x107310b4,
        "CameraModeFollow": 0x106f67fc,
        "SpellWithObjects": 0x109a591c,
        "LHOSFile": 0x1099a674,
        "HelpText": 0x1099db74,
        "MapShield": 0x109def98,
        "GestureSystem": 0x10733100,
        "PlannedTownCentre": 0x109e3cf8,
        "MPFELogin": 0x109a3a30,
        "GSingleMapFixedInfo": 0x10740cf0,
        "CreaturePhysical": 0x1077e154,
        "WorshipSpellIcon": 0x106f5b44,
        "CameraModeFollowHeading": 0x10777938,
        "Reward": 0x10759770,
        "BuildingSite": 0x107391d0,
        "SetupCheckBox": 0x10730d90,
        "FelledTree": 0x1073a890,
        "Fragment": 0x106f601c,
        "TotemStatue": 0x106f7d68,
        "HelpSystem": 0x1099cabc,
        "SetupSlider": 0x1073125c,
        "DancePathInfo": 0x10744cf8,
        "TattooEditor": 0x109ed75c,
        "SetupStaticTextNoHit": 0x1099b09c,
        "CreatureBeliefs": 0x109899d4,
        "Villager": 0x106f5ae4,
        "SetupVBarGraph": 0x10730f68,
        "GLeashStatus": 0x109a0a5c,
        "GameThingWithPos": 0x107313c8,
        "DanceGroup": 0x10996e84,
        "Wonder": 0x10760604,
        "DialogBoxOptions": 0x109990f0,
        "GWorshipSiteInfo": 0x109eb3bc,
        "GStreetLight": 0x109e186c,
        "WorshipSite": 0x106f5b48,
        "LocalBase": 0x1099bda8,
        "StatsDatabase": 0x10745ca0,
        "GSLobbyBox": 0x109edd14,
        "Object": 0x10732c1c,
        "GAudio": 0x10776834,
        "MultiMapFixed": 0x107339e0,
        "TownArtifact": 0x10736fe8,
        "PSysBase": 0x106f5fd4,
        "ScriptHighlight": 0x106fa600,
        "SetupBox": 0x10731368,
        "FireEffect": 0x1075c8ac,
        "SetupPicture": 0x10730eb8,
        "GBigForestInfo": 0x10738664,
        "GTotemStatueInfo": 0x109e33b0,
        "PileResource": 0x10748244,
        "Fixed": 0x107339a4,
        "ShowNeedsVisuals": 0x1075acf8,
        "PSysInterface": 0x106f5fd8,
        "TownCentre": 0x106f6a44,
        "LHReleasedOSFile": 0x1099a690,
        "SetupMP3Button": 0x1073110c,
        "GTerrainMap": 0x10730bb0,
        "GMobileObjectInfo": 0x10736ef4,
        "WeatherThing": 0x109ea368,
        "CameraModeDance": 0x1077777c,
        "Living": 0x106f5ae0,
        "Cow": 0x1074b318,
        "NewProfileBox": 0x109ed91c,
        "Mobile": 0x10732c50,
        "GVirtualInfluence": 0x1075e9cc,
        "SpecialVillager": 0x106f5d78,
        "Totem": 0x10755fc8,
        "DataPath": 0x109a0f0c,
        "GInterfaceCollide": 0x10733138,
        "GInterface": 0x1099dd60,
        "CreatureDamageMap": 0x1077e11c,
        "GameThing": 0x107313a4,
        "GStreetLantern": 0x109e0fac,
        "ProfileEditor": 0x109ed81c,
        "GSoundMap": 0x109d7988,
        "MainMenu": 0x109ed7dc,
        "HandStateCamera": 0x1099b15c,
        "GameOSFile": 0x1099a6a4,
        "SoundTag": 0x109d7a48,
        "GVillagerStateTableInfo": 0x109e9f94,
        "TownStats": 0x109e366c,
        "SetupControl": 0x10730d60,
        "CreaturePlan": 0x1098d1c8,
        "SetupHLineGraph": 0x10730fd4,
        "DeadTree": 0x1073a87c,
        "GFootpathLinkSave": 0x10743118,
        "LHDLL": 0x109c4204,
        "GVillagerInfo": 0x109e7808,
        "Tree": 0x106f65d0,
        "HandStateInvisible": 0x1077db8c,
        "DialogBoxSaveMessage": 0x10999138,
        "Rock": 0x10738828,
        "OneOffSpellSeed": 0x106f8cd0,
        "ValueSpinner": 0x10737b5c,
        "PHandFX": 0x109b13a4,
        "GInterfaceStatus": 0x106f8170,
        "LoginBox": 0x109ed79c,
        "GTownDesireInfo": 0x109e57f8,
        "GatheringBox": 0x1099afc4,
        "GSpellIconInfo": 0x109dc3cc,
        "ScriptDLL": 0x109c4218,
        "GMagicEffectInfo": 0x1073d078,
        "LobbyBox": 0x109edd5c,
        "AnimatedStatic": 0x10735458,
        "GTreeInfo": 0x1075e05c,
        "CreatureSubAction": 0x1077e1c4,
        "GFootpathFinder": 0x10742ed8,
        "CreaturePreviousLesson": 0x107874ec,
        "HandStateGrain": 0x1099b3c8,
        "CreatureVisionState": 0x10787404,
        "StartGameBox": 0x109ed69c,
        "CreatureSubActionAgenda": 0x1077e1fc,
        "HandStateTotem": 0x1099ba3c,
        "MPFEDatabase": 0x109a37c8,
        "CreatureBelief": 0x10989880,
        "Spell": 0x106f64a8,
        "PileWood": 0x10748258,
        "GInterfaceMessageBuffer": 0x1099f8e4,
        "CameraModePath": 0x106f677c,
        "GroupBehaviour": 0x106f5ebc,
        "GMagicInfo": 0x10777008,
        "DialogBoxKeyBinding": 0x10998fa0,
        "Creche": 0x1099409c,
        "SetupButton": 0x10730d7c,
        "TownSpellIcon": 0x109e59d8,
        "GObjectInfo": 0x10734638,
        "ReactionInfo": 0x10759644,
        "HelpSpirit": 0x1099bee8,
        "MPFELoginDatabase": 0x109a39cc,
        "CreatureLearning": 0x107875cc,
        "HandStateMultiPickUp": 0x1099b594,
        "CreatureDesires": 0x1098aa04,
        "CameraModeTwoObjects": 0x106fa538,
        "GPlayerInfo": 0x10730bf0,
        "SkirmishGameBox": 0x109ed65c,
        "GArena": 0x106f5c54,
        "Whale": 0x1075fc64,
        "GCamera": 0x107770f0,
        "HandStateHolding": 0x1099b3b4,
        "GEffectInfo": 0x1073d064,
        "LH3DStaticObject": 0x101ca688,
        "LH3DSpriteObject": 0x101cc750,
        "LH3DAnimatedObject": 0x101cc08c,
        "LH3DMist": 0x101cd2c4,
        "LH3DComplexObject": 0x101cbe04,
        "LHFile": 0x101da9f4,
        "LH3DCitadel": 0x101ca6d0,
        "LH3DMeshedObject": 0x101ca65c,
        "Prss": 0x101cbc14,
        "LH3DStaticMorphableObject": 0x101ca6bc,
        "LH3DObject": 0x101ca638,
        "LHReleasedFile": 0x101daa08,
        "Creature": 0x1077e3fc,
        "EndGameBox": 0x1099ad24,
        "Feature": 0x1073e240,
        "Field": 0x1073ee78,
        "GGame": 0x10732e08,
        "SpellWater": 0x109dacd0,
        "GWaterfall": 0x1075d4a8,
        "MobileObject": 0x109ab974,
        "HistoryBox": 0x109ed4b4,
        "Football": 0x109993f0,
        "BWGameSpy": 0x109edcac,
        "Pot": 0x10749c20,
        "SpellSeed": 0x109dd924,
        "Animal": 0x10762bcc,
        "MiniDialogBoxOptions": 0x10999050,
        "Mist": 0x10745710,
        "Forest": 0x107434e8,
        "GGameInfo": 0x1099a58c,
        "Waypoint": 0x1075f664,
        "GGuidance": 0x109d7844,
        "CreatureRoomCamera": 0x1098e6f4,
        "SpellShield": 0x109e09c4,
        "GameStats": 0x1099ab34,
        "WeatherInfo": 0x109ea154,
        "CameraModeCitadel": -1,
        "GCameraEditor": -1,
        "CameraModeNew2": -1,
        "CameraModeNew": -1,
        "CameraModeNew1": -1,
        "CameraModeFlyAndClick": -1,
        "MultiplayerConditionBox": -1,
    }
    found_issues = False
    last_comment = None
    global_addresses: Dict[str, GlobalInfo] = {}
    for t in tu.get_tokens(extent=tu.cursor.extent):
        if t.kind.name == "COMMENT":
            last_comment = t
            continue
        elif t.kind.name == "IDENTIFIER":
            c = t.cursor
            if c.kind.name == "VAR_DECL":
                if c.storage_class.name == 'STATIC' and c.type.kind.name == 'POINTER':
                    type_name = c.type.get_pointee().spelling
                    try:
                        literal_spelling: str = next(filter(lambda x: x.kind.name == "LITERAL", c.get_tokens())).spelling
                    except StopIteration:
                        found_issues = True
                        sys.stderr.write(
                            f"{c.extent.start.file.name}:{c.extent.start.line}: cannot find literal in tokens")
                        continue
                    try:
                        literal_value: int = ast.literal_eval(literal_spelling)
                    except ValueError as e:
                        found_issues = True
                        sys.stderr.write(
                            f"{c.extent.start.file.name}:{c.extent.start.line}: global declaration \"{c.spelling}\" can't parse: \"{literal_spelling}\"\n")
                        continue
                    if type_name not in known_types:
                        found_issues = True
                        sys.stderr.write(
                            f"{c.extent.start.file.name}:{c.extent.start.line}: global declaration \"{c.spelling}\" using unknown type: \"{type_name}\"\n")
                        continue
                    msvc_mangled_name = None
                    decorated_name = None
                    mac_addr = None
                    match = re.match(r'__vt__\d+(.+)', c.spelling)
                    if match:
                        vftable_type_name = match.group(1)
                        msvc_mangled_name = f"??_7{vftable_type_name}@@6B@"
                        decorated_name = f"{vftable_type_name}::`vftable'"
                        mac_addr = mac_vftable_lookup.get(vftable_type_name)
                        if mac_addr is None:
                            found_issues = True
                            sys.stderr.write(
                                f"{c.extent.start.file.name}:{c.extent.start.line}: vftable for \"{vftable_type_name}\" is missing a mac address\n")
                            # continue
                        # insert RTTICompleObjectLocator
                        locator_name = f"__RTTICompleObjectLocator__{len(vftable_type_name)}{vftable_type_name}"
                        locator_decorated_name = f"{vftable_type_name}::`RTTI Complete Object Locator'"
                        locator_msvc_mangled_name = f"??_R4{vftable_type_name}@@6B@"
                        locator_type = "struct RTTICompleteObjectLocator"
                        locator_win_addr = literal_value - 4 if literal_value != -1 else -1
                        locator_mac_addr = mac_rtti_lookup.get(vftable_type_name)
                        global_addresses[locator_name] = GlobalInfo(locator_type, locator_win_addr, locator_mac_addr, locator_decorated_name, locator_msvc_mangled_name)
                    global_addresses[c.spelling] = GlobalInfo(type_name, literal_value, mac_addr, decorated_name, msvc_mangled_name)
                    last_comment = None
                elif c.type.kind.name == 'ELABORATED':
                    type_name = c.type.get_named_type().spelling
                    if type_name not in known_types:
                        found_issues = True
                        sys.stderr.write(
                            f"{c.extent.start.file.name}:{c.extent.start.line}: global declaration \"{c.spelling}\" using unknown type: \"{type_name}\"\n")
                        continue
                    mangled_name = c.mangled_name
                    match = extract_info_from_comment(last_comment.spelling)
                    if match:
                        win_addr, mac_addr, decorated_name = match
                        global_addresses[c.spelling] = GlobalInfo(type_name, win_addr, mac_addr, decorated_name, mangled_name)
                    last_comment = None
    return found_issues, global_addresses


def extract_globals_in_header_info(tu: TranslationUnit) -> Tuple[bool, Dict[str, GlobalInfo]]:
    GLOBALS_TO_IGNORE = {'mod_added_globals'}

    globals_cursor = next(c for c in tu.cursor.get_children() if c.kind.name == "VAR_DECL" and c.spelling == "globals")
    globals_decl_cursor = globals_cursor.type.get_fields()
    globals_init_list = list(next(i for i in globals_cursor.get_children() if i.kind.name == 'INIT_LIST_EXPR').get_children())
    literal_map: dict[str, Token] = {}
    for i in globals_init_list:
        for j in i.walk_preorder():
            if j.kind.name == 'MEMBER_REF':
                key = j.spelling
            elif j.kind.name == 'INTEGER_LITERAL':
                value = next(j.get_tokens())
        literal_map[key] = value

    types: Dict[str, TypeInfo] = {}
    extra_types = extract_function_pointers(globals_cursor.type.get_declaration().type)
    types.update((f"globals_funcptr__{k}_t", v[0]) for k, v in extra_types.items())

    found_issues = False
    global_addresses: Dict[str, GlobalInfo] = {}
    for identifier in globals_decl_cursor:
        if identifier.spelling in GLOBALS_TO_IGNORE:
            continue
        var_name = identifier.spelling
        if var_name in extra_types:
            var_type = f"globals_funcptr__{var_name}_t" + (extra_types[var_name][1] - 1) * "*"
        else:
            var_type = identifier.type.get_pointee().spelling
        literal_spelling = literal_map[var_name].spelling
        try:
            literal_value: int = ast.literal_eval(literal_spelling)
        except ValueError as e:
            found_issues = True
            sys.stderr.write(f"global declaration \"{identifier.spelling}\" can't parse: \"{literal_spelling}\"\n")
            continue
        global_addresses[var_name] = GlobalInfo(var_type, literal_value, None, None, None)
    return found_issues, global_addresses, types


def extract_info_from_comment(string):
    pattern = re.compile(r"// win1\.41 (?P<winaddr>[0-9a-fA-F]+|inlined) mac (?P<macaddr>[0-9a-fA-F]+|inlined) (?P<decoratedname>[\w:(), *&<>\[\]~\-\+=/\.`']+)")
    match = pattern.search(string)
    if match:
        win_addr = int(match.group('winaddr'), 16) if match.group('winaddr') != 'inlined' else -1
        mac_addr = int(match.group('macaddr'), 16) if match.group('macaddr') != 'inlined' else -1
        decorated_name = match.group('decoratedname')
        return win_addr, mac_addr, decorated_name
    return None


def extract_function_info(tu: TranslationUnit, known_types: Set[str], decorated_names: Set[str],
                          function_metadata: List[FunctionMetadata]) -> bool:
    found_issues = False

    for t in tu.get_tokens(extent=tu.cursor.extent):
        # TODO: Make sure every type is accounted for
        if t.kind.name == "COMMENT":
            match = extract_info_from_comment(t.spelling)
            if match:
                win_addr, mac_addr, decorated_name = match
                if "virtual table" in decorated_name or "vtable" in decorated_name or "vftable" in decorated_name and "`RTTI Complete Object Locator'" in decorated_name:
                    continue
                if decorated_name in decorated_names:
                    sys.stderr.write(f"{t.extent.start.file.name}:{t.extent.start.line}: error: duplicate entry: \"{decorated_name}\"\n")
                    found_issues = True
                else:
                    function_metadata.append(
                        FunctionMetadata(win_addr=win_addr, mac_addr=mac_addr, decorated_name=decorated_name))
                    decorated_names.add(decorated_name)
            elif (
                    " win" in t.spelling or " mac" in t.spelling) and "inline" not in t.spelling and "vftable" not in t.spelling  and "vtable" not in t.spelling and "virtual table" not in t.spelling:
                sys.stderr.write(
                    f"{t.location.file}:{t.location.line}:{t.location.column} badly formed function metadata: \"{t.spelling}\"\n")
                found_issues = True
            elif (t.spelling.startswith("// inline")):
                sys.stderr.write(
                    f"{t.location.file}:{t.location.line}:{t.location.column} badly formed function metadata: \"{t.spelling}\"\n")
                found_issues = True
        elif t.kind.name == "IDENTIFIER":
            if function_metadata and function_metadata[-1].undecorated_name is None:
                id_kind = t.cursor.kind
                if id_kind.name == "FUNCTION_DECL" and t.cursor.spelling not in FUNCS_TO_IGNORE:
                    def fix_up_type_spelling(t):
                        if t.get_pointee().kind.name == 'FUNCTIONPROTO':
                            for ct in ["fastcall", "stdcall"]:
                                if t.spelling.endswith(f"__attribute__(({ct}))"):
                                    spelling = t.spelling
                                    spelling = spelling.removesuffix(f" __attribute__(({ct}))")
                                    return spelling.replace("(*)", f"(__{ct}*)", 1)
                        return t.spelling

                    args = list(t.cursor.get_arguments())
                    arg_names = [a.spelling for a in args]
                    arg_types = [fix_up_type_spelling(a.type) for a in args]
                    ret = t.cursor.type.get_result().spelling
                    for ct in ["fastcall", "stdcall"]:
                        if t.cursor.type.spelling.endswith(f"__attribute__(({ct}))"):
                            call_type = f"__{ct}"
                            break
                    else:
                        call_type = "cdecl"
                    if t.cursor.mangled_name != ("_" + t.spelling) and not t.cursor.mangled_name.startswith("@" + t.spelling):
                        function_metadata[-1].mangled_name = t.cursor.mangled_name
                    function_metadata[-1].undecorated_name = t.spelling
                    function_metadata[-1].return_type = ret
                    function_metadata[-1].argument_types = arg_types
                    function_metadata[-1].argument_names = arg_names
                    function_metadata[-1].call_type = call_type
                    function_metadata[-1].is_function_variadic = t.cursor.type.is_function_variadic()
                    for c in t.cursor.get_children():
                        if c.kind.name != "PARM_DECL":
                            continue
                        param_type = c.type
                        while param_type.kind.name == "POINTER":
                            pointee = param_type.get_pointee()
                            if pointee.kind.name != 'FUNCTIONPROTO':
                                param_type = pointee
                            else:
                                break
                        if param_type.kind.name == "ELABORATED":
                            param_type = param_type.get_named_type()
                        builtin_type_kinds = ["INT", "UCHAR", "CHAR_S", "VOID", "BOOL", "FLOAT", "LONG", "ULONG"]
                        declared_type_kinds = ["TYPEDEF", "RECORD", "ENUM", "FUNCTIONPROTO"]
                        if param_type.kind.name not in (
                                builtin_type_kinds + declared_type_kinds) and param_type.get_pointee().kind.name != 'FUNCTIONPROTO':
                            found_issues = True
                            sys.stderr.write(
                                f"{t.extent.start.file.name}:{t.extent.start.line}: function declaration \"{t.spelling}\" trouble parsing: \"{param_type.spelling}\"\n")

    return found_issues


def main(header_path=None, out_path="extracted_reversing_data_bw_141.json") -> bool:
    with open("scripts/headers/class_hierarchy.json") as f:
        jch = json.load(f)
    class_hierarchies = {i[0][1].removeprefix("class ").removeprefix("struct "): [j[1].removeprefix("class ").removeprefix("struct ") for j in i] for i in jch}
    if header_path is None:
        header_path = Path(__file__).parent.parent.parent
    elif type(header_path) is str:
        header_path = Path(header_path)

    out_path = Path(out_path).absolute()
    os.chdir(header_path)

    paths: List[Path] = list(filter(lambda x: x.name != "globals.h", itertools.chain(*(p.rglob("*.h") for p in PATHS))))
    include_all_headers_src = '\n'.join(f'#include "{p}"' for p in paths)
    header_includer = Path("src/c/_HeaderIncluder.c")

    found_issues, types = extract_type_info(parse_source(source=include_all_headers_src))

    decorated_names: Set[str] = set()
    function_metadata: List[FunctionMetadata] = []
    for path in paths:
        found_issues |= extract_function_info(parse_source(path=path), set(types.keys()), decorated_names, function_metadata)

    global_values: Dict[str, GlobalInfo] = {}
    for path in paths:
        new_issues, g = extract_globals_info(parse_source(path=path), set(types.keys()))
        global_values.update(g)
        found_issues |= new_issues

    globals_src = include_all_headers_src + "\n" + Path("globals.h").open().read()

    new_issues, globals_in_header_values, globals_extra_types = extract_globals_in_header_info(parse_source(source=globals_src))
    global_values.update(globals_in_header_values)
    types |= globals_extra_types
    found_issues |= new_issues

    # for global_name, (global_type, global_value) in global_values.items():
    #     print(f"{global_name}: {global_type} -> {hex(global_value)}")

    result_types: List[Dict] = []
    for type_name, t in types.items():
        if t.location.is_absolute() or type_name in TYPES_TO_IGNORE:
            continue
        entry = dict(kind=t.kind_name, type=type_name, size=t.size)
        if t.kind_name == "STRUCT_DECL":
            entry['members'] = [dict(name=n, type=fixup_type(t), offset=o) for n, t, o in t.children]
        elif t.kind_name == "ENUM_DECL":
            entry['constants'] = [dict(name=k, value=v) for k, v in t.children]
        elif t.kind_name == "UNION_DECL":
            entry['aliases'] = [dict(name=k, type=fixup_type(v)) for k, v in t.children]
        elif t.kind_name == "TYPEDEF_DECL":
            entry['typedef'] = fixup_type(t.children)
        elif t.kind_name == "FUNCTIONPROTO":
            result, args, signature = t.children
            for call_type in ['fastcall', "stdcall"]:
                attribute = f" __attribute__(({call_type}))"
                if signature.endswith(attribute):
                    entry['call_type'] = f"__{call_type}"
                    break
            else:
                entry['call_type'] = "__cdecl"
            if entry['call_type'] == "__fastcall":
                if len(args) >= 1:
                    if args[0][0].removeprefix("const ").startswith("struct ") and args[0][0].endswith(" *"):
                        if len(args) == 1 or args[1][0] == "const void *" or args[1][1] == 'edx':
                            entry['call_type'] = "__thiscall"
                            args[0] = args[0][0], "this"
                            if len(args) > 1:
                                args.pop(1)

            entry['size'] = 4
            entry['result'] = fixup_type(result)
            entry['args'] = [fixup_type(i[0]) for i in args]
            entry['arg_names'] = [i[1] for i in args]
            entry['signature'] = signature
        result_types.append(entry)

    result_functions: List[Dict[str, List[Dict[str, str]] | str | int]] = []
    for f in function_metadata:
        if f.undecorated_name is None:
            continue
        f.consolidate_thiscall(class_hierarchies)
        f.return_type = fixup_type(f.return_type)
        f.argument_types = list(map(fixup_type, f.argument_types))
        result_functions.append(asdict(f))

    result_globals: List[Dict[str, str | int]] = [
        dict(name=global_name, type=fixup_type(g.type_name), win_addr=g.win_addr, mac_addr=g.mac_addr, decorated_name=g.decorated_name, msvc_mangled_name=g.msvc_mangled_name)
        for global_name, g in global_values.items()
    ]

    result = dict(types=result_types, functions=result_functions, globals=result_globals)

    with out_path.open(mode="w") as f:
        json.dump(result, f, indent=2)

    return found_issues

if __name__ == "__main__":
    from sys import argv
    exit(main(*argv[1:]))
