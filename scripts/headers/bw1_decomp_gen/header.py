import csnake

from dataclasses import dataclass
from inflection import underscore
from pathlib import Path

from structs import Struct
from utils import partition


HEADER_GUARD_TEMPLATE = "BW1_DECOMP_%s_INCLUDED_H"


@dataclass
class Header:
    @dataclass(order=True)
    class Include:
        header_path: Path  # including "" or <>
        dependencies: set[str]  # TODO: This may be a Union of Struct, Typedef instead
        system: bool

    path: Path
    includes: list[Include]
    structs: list[Struct]  # TODO: This may be a Union of Struct, Typedef instead

    def to_code(self, cw: csnake.CodeWriter):
        cw.start_if_def(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)), invert=True)
        cw.add_define(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)))
        cw.add_line()

        if self.includes:
            include_categories = partition([lambda x: x.system], sorted(self.includes))
            for c in include_categories:
                c = list(c)
                if not c:
                    continue
                for i in c:
                    cw.include(('<' if i.system else '"') + str(i.header_path) + ('>' if i.system else '"'),
                               ("For " + ", ".join(sorted(i.dependencies)) if i.dependencies else None))
                cw.add_line()

        for s in self.structs:
            s.to_code(cw)
            cw.add_line()

        cw.end_if_def()
        cw.add_line()
