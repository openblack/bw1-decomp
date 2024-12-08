import csv
import json
import os
from __main__ import toAddr, getInstructionBefore, getBytes
from collections import OrderedDict


START_ADDR = 0x0401000
END_ADDR = 0x008a9000


def align_to_next_boundary(address, boundary=0x10):
    return (address + boundary - 1) & ~(boundary - 1)


def get_end_of_prev_asm(address):
    inst = getInstructionBefore(toAddr(hex(address)))
    assert(inst.getMnemonicString().upper() in ['RET', 'JMP'])
    return inst.address.offset + inst.length


def find_indirect_jump_table(addr, count):
    """check if the addr is part of a indirect jump table definition.
    to tell if true, it will be consecutive bytes between 0 and count
    return addrs and count of indirects
    """
    indirect_jmptbl_start = None
    indirect_jmptbl_count = 0
    # data = getBytes(toAddr(addr + indirect_jmptbl_count), 1)
    while 0 <= getBytes(toAddr(addr + indirect_jmptbl_count), 1)[0] < count:
        indirect_jmptbl_start = addr
        indirect_jmptbl_count += 1

    return indirect_jmptbl_start, indirect_jmptbl_count


def group_consecutive_addrs(addrs):
    groups = []
    start = addrs[0]
    count = 1

    for i in range(1, len(addrs)):
        if addrs[i] == addrs[i - 1] + 4:  # Check if the current address is aligned and consecutive
            count += 1
        else:
            groups.append((start, count))
            start = addrs[i]
            count = 1

    groups.append((start, count))  # Add the last group
    return groups


def estimate_parts():
    dir = os.path.dirname(__file__)
    with open(os.path.join(dir, "runblack_addr.csv")) as csvfile:
        addr_lines = csv.reader(csvfile)
        tiltes = next(addr_lines)
        addrs = sorted(filter(lambda x: START_ADDR <= x < END_ADDR, (int(row[0], 16) for row in addr_lines)))


    groups = group_consecutive_addrs(addrs)

    parts = []
    start_asm = START_ADDR
    for jmptbl_start, count in groups:
        end_asm = get_end_of_prev_asm(jmptbl_start)
        parts.append(OrderedDict([
            ("type", "asm"),
            ("start", "%08x" % start_asm),
            ("end", "%08x" % end_asm),
        ]))
        if end_asm != jmptbl_start:
            parts.append(OrderedDict([
                ("type", "db"),
                ("start", "%08x" % end_asm),
                ("end", "%08x" % jmptbl_start),
            ]))
        jmptbl_end = jmptbl_start + 4 * count
        parts.append(OrderedDict([
            ("type", "jmptbl"),
            ("start", "%08x" % jmptbl_start),
            ("end", "%08x" % jmptbl_end),
        ]))
        # TODO: search forward for indirect jump table (list of bytes between 0 and count), makes a ijmptbl type entry
        indirect_jmptbl_start, indirect_jmptbl_count = find_indirect_jump_table(jmptbl_end, count)
        indirect_jmptbl_end = None
        if indirect_jmptbl_start:
            indirect_jmptbl_end = indirect_jmptbl_start + indirect_jmptbl_count
            parts.append(OrderedDict([
                ("type", "ijmptbl"),
                ("start", "%08x" % indirect_jmptbl_start),
                ("end", "%08x" % indirect_jmptbl_end),
            ]))
        # TODO: align to the next 0x10 boundary and set as db
        next_start_asm = align_to_next_boundary(indirect_jmptbl_end or jmptbl_end)
        if next_start_asm != jmptbl_end:
            parts.append(OrderedDict([
                ("type", "db"),
                ("start", "%08x" % jmptbl_end),
                ("end", "%08x" % next_start_asm),
            ]))
        start_asm = next_start_asm

    with open(os.path.join(dir, "runblack_addr.json"), 'w') as j:
        json.dump(dict(parts=parts), j, indent=4)

"""
run this in ghidra python console
__import__("imp").load_source('estimate_parts', r'/PATH/TO/jump_table_detector.py').estimate_parts()
"""