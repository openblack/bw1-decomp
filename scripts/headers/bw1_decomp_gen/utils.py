from typing import Iterable, Callable
from collections import OrderedDict


LH_COLLECTION_TEMPLATES = ["LHLinkedList", "LHListHead", "GJVector", "LHDynamicStack"]


CONTAINER_DECLARATION_MACROS = {
    'LHLinkedList<T*>': "DECLARE_P_LH_LINKED_LIST",
    'LHLinkedList<T>': "DECLARE_LH_LINKED_LIST",
    'LHListHead<T>': "DECLARE_LH_LIST_HEAD",
    'LHDynamicStack<T>': "DECLARE_LH_DYNAMIC_STACK",
    'GJVector<T>': "DECLARE_GJ_VECTOR",
}


TEMPLATE_CONTAINER_STRUCTS_PREFIXES = OrderedDict({
    'LHLinkedList<T*>': ['LHLinkedList__p_', 'LHLinkedNode__p_'],
    'LHLinkedList<T>': ['LHLinkedList__', 'LHLinkedNode__'],
    'LHListHead<T>': ['LHListHead__'],
    'LHDynamicStack<T>': ['LHDynamicStack__'],
    'GJVector<T>': ['GJVector__'],
})


def extract_template_type(type_name: str) -> str:
    type_name = type_name.removeprefix("struct ")
    for v in TEMPLATE_CONTAINER_STRUCTS_PREFIXES.values():
        for p in v:
            type_name = type_name.removeprefix(p)
    return type_name


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
