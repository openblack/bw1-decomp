# bw1-decomp utility scripts

## Header Analyzer and Header Generator

```bash
# Analyze headers
python scripts/headers/analyze_headers.py extracted_reversing_data_bw_141.json

# Edit the extracted_reversing_data_bw_141.json if needed
code extracted_reversing_data_bw_141.json

# Regenerate the headers
python scripts/headers/bw1_decomp_gen/generate_headers.py extracted_reversing_data_bw_141.json
```

This `analyze_headers.py` script uses clang to analyze the headers in bw1-decomp and generate a database json file.

The `generate_headers.py` uses this json database file to re-generate the headers in a structured and uniform format.

This is part of the reversing loop and having these two inverse scripts allows for perfect formating, avoiding duplicate entries, quick code generation and creation of tools that can analyze existing data.

The most powerful feature of this reversing loop is that the database file can be edited before re-generating headers to have type, functions and globals inserted by an analysis tool in a batched way. This can save a lot of time.

### Vanilla filepaths and Roomates

The `generate_headers.py` script uses `scripts/headers/bw1_decomp_gen/vanilla_filepaths.py` to know where to set each type.

The file is made by analyzing the filepath strings left in the windows version. The original code used the macros `__FILE__` and `__LINE__` for many of its allocation, random and logging functions. The static init mechanism of the mac version also gives clues to many cpp files. By analyzing these paths we can make a fairly acurate topology of the original source code.

The set `released_filepaths_from_strings` represents actual strings in the binary which are therefore confirmed to be real paths. The set `guessed_filepaths` represents non-confirmed paths that are nontheless very likely given the patterns observed in `released_filepaths_from_strings`. Using these two sets, we can usually see a class name that fits in there.

Not all type names have their own file, so there is a `ROOMMATE_CLASS_MAP` where a roomate is a class that has a known or guessed file in which the other type can also be declared.

By having every single type have a vanilla filepath or a roomate type, each type and function will be placed in a file and can then be compiled.

## Mac unmangler

```bash
python scripts/mac_unmangler.py MANGLED_FUNCTION_NAME
```

This script is a python implementation of cxxfilt <= 2.30. It allows for demangling old gcc style mangled names which are the names left over from debug symbols in the mac version of Black & White.

## Msvc mangler

```bash
python scripts/msvc_mangler.py "class Foo { public: void Bar(int fuz) {} };"
```

This script uses clang to compile classes get get function signatures in their mangled form as if they were compiled on msvc.

## Cross mangler

```bash
python scripts/msvc_mangler.py extracted_reversing_data_bw_141.json
void __fastcall ProcessGraphicsEngine__5GGameFUlUl
?ProcessGraphicsEngine@GGame@@QAEXKK@Z
GPlayer* __fastcall GetPlayer__5GGameFUl
?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
bool __fastcall IsMultiplayerGame__5GGameCFv
?IsMultiplayerGame@GGame@@QBE_NXZ
```

This script uses the [Mac unmangler] and [Msvc mangler] to go from the mac mangling style to the msvc style. Run on its own, it's tuned to easily copy from the return type (without struct, enum and union) to the function name in a header to get a mangled form to put in an asm block.

## Repository Function Name Replacer

```bash
python scripts/repo_replace_function_names.py 0x00435b90 my_function_name
```

This script automates the process of replacing and inserting function names throughout the repository. It uses git operations and direct file manipulation to propagate function name changes across assembly files, RTTI data, and other codebase references.

The script provides several utility functions for managing function names:

* `replace_function_name_in_repo_files(source, destination)` — Replaces all occurrences of a function name across the entire repository, including RTTI data, assembly labels, extern declarations, and all references. It handles alignment padding when the source and destination names have different lengths.

* `set_function_name_in_repo_files(addr, label)` — Sets a function name at a given address. If a typical jump reference exists, it replaces that; otherwise, it inserts a global label directly into the assembly file at the specified address.

* `insert_global_function_name_to_asm_file(addr, label)` — Inserts a new global function label into the assembly file at the specified address, automatically adding the necessary `.globl` declaration in the appropriate location.

The script is designed to work with the reversing workflow, enabling quick bulk updates to function names discovered during analysis without manually editing multiple files.

## Easy Function Inserter

```bash
python scripts/insert_functions.py manual_analysis_functions.csv extracted_reversing_data_bw_141.json
```

This script uses the [Cross mangler] to quickly insert new functions from manual analysis into the reversing database (from `scripts/headers/analyze_headers.py`) which can then be added to the headers using `scripts/headers/bw1_decomp_gen/generate_headers.py`. It also uses the [Repository Function Name Replacer] to propagate function names throughout the codebase.

The script is meant to be run after cross referencing the mac version which has function names with the windows version which does not. The function signature is inferenced using [Mac unmangler] but needs manual input of the best guess for the return type.

### Input CSV

The input to this function is a CSV file with the following headers:
* `win addr`: The virtual hex address of the start of the function in the windows version.
* `mac mangled name`: The name of the function as it appears in the mac version. This is an old gcc mangling stle.
* `mac addr`: The virtual hex address of the start of the function in the mac version.
* `call type`: One of `thiscall`, `fastcall`, `stdcall` or `cdecl`. If it's `thiscall`, the script will be able to mangled within a class namespace.
* `return type`: Since return types are not included in old gcc mangling, the return type must be inferred manually.

```csv
win addr,mac mangled name,mac addr,call type,return type
00435b90,.Create__4BallFRC9MapCoordsPC9GBallInfoUsff,100b09f0,stdcall,Ball*
004f1230,.__ct__12CreaturePlanF16CREATURE_DESIRES15CREATURE_ACTIONP14CreatureBeliefP14CreatureBeliefP14CreatureBelieff,10278a10,thiscall,CreaturePlan*
0074dc30,ConvertAngle3DToGame__6GUtilsFf,1057b5b0,thiscall,uint32_t
0071d300,.GetRandomSample__20GHelpSpritesGuidanceCFv,1050d290,thiscall,uint32_t
0071af50,.PlayNow__9GGuidanceFQ29GGuidance17GUIDANCE_SFX_TYPE,10097dc0,thiscall,uint32_t
```

### Limitations

It is difficult to unmangle and re-mangle functions with template parameters. It's also very difficult to know if a parameter is from template expansion or not. Additionally, you can't add template syntax to C headers so they must be manually renamed. As the number of templated functions is realitvely low, it's best to add these function manually.

## ASM file import cleaner

```bash
python src/scripts/asm_to_c/cleanup_imports_exports.py src/asm/unprocessed/runblack.reassemble.0501.0055c770-0055c8a0.asm src/asm/unprocessed/runblack.reassemble.0502.0055c8a0-0055cb70.asm src/asm/unprocessed/runblack.reassemble.0503.0055cb70-00562180.asm
```

This script takes an arbitrary amount of paths to asm files and will scan the file for `.globl` and `.extern` directives for labels that are not present in each file. It then removes thse unused imports and exports.
