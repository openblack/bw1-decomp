#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <wtypes.h>
#pragma clang diagnostic pop
#include <winnt.h>

// [0x9c0] 0x008a9000 + 0x9c0 = 0x008a99c0
const IMAGE_DEBUG_DIRECTORY DebugDirectory = {
    .Characteristics = 0,
    .TimeDateStamp = 0x3d0ecf82,
    .MajorVersion = 0,
    .MinorVersion = 0,
    .Type = IMAGE_DEBUG_TYPE_CODEVIEW,
    .SizeOfData = 0x2f,
    .AddressOfRawData = 0,
    .PointerToRawData = 0x00843000,
};
