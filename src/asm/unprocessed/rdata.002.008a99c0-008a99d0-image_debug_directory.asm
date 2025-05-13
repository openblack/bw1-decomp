.intel_syntax noprefix
.section .rdata

.macro IMAGE_DEBUG_DIRECTORY Characteristics TimeDateStamp MajorVersion MinorVersion Type SizeOfData AddressOfRawData PointerToRawData
    .long \Characteristics
    .long \TimeDateStamp
    .word \MajorVersion
    .word \MinorVersion
    .long \Type
    .long \SizeOfData
    .long \AddressOfRawData
    .long \PointerToRawData
.endm

// [0x9c0] 0x008a9000 + 0x9c0 = 0x008a99c0
IMAGE_DEBUG_DIRECTORY 0x0 0x3d0ecf82 0 0 2 0x2f 0 0x00843000
