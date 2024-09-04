from typing import Iterable, Callable

def extract_type_name(type_name: str) -> str:
    return type_name.removeprefix("const ").removeprefix("struct ").removeprefix("union ").removeprefix("enum ").removesuffix("*").strip()


def partition(preds: list[Callable], iterable: Iterable) -> list:
    buckets = [[] for _ in range(len(preds) + 1)]
    for item in iterable:
        for i, pred in enumerate(preds):
            if pred(item):
                buckets[i].append(item)
                break
        else:
            buckets[-1].append(item)
    return buckets