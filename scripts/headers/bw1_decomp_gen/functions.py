from dataclasses import dataclass


@dataclass
class FunctionPrototype:
    name: str
    call_type: str
    result: str
    args: list[str]

    def __init__(self, name: str, call_type: str, result: str, args: list[str]):
        self.name = name
        self.call_type = call_type
        self.result = result.replace(" *", "*")
        self.args = [a.replace(" *", "*") for a in args]

    @classmethod
    def from_json(cls, decl: dict) -> "FunctionPrototype":
        name = decl['type']
        call_type = decl['call_type']
        result = decl['result']
        args = decl['args']
        return cls(name, call_type, result, args)