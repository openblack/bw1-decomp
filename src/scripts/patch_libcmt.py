import sys

with open(sys.argv[1], 'rb') as fin:
    data = bytearray(fin.read())

# IMAGE_SCN_TYPE_NO_PAD
data[0x38] |= 0x8

with open(sys.argv[2], 'wb') as fout:
    fout.write(data)
