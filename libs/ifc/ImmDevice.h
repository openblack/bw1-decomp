#ifndef BW1_DECOMP_IMM_DEVICE_INCLUDED_H
#define BW1_DECOMP_IMM_DEVICE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <guiddef.h> /* For GUID */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t */

// Forward Declares

struct CImmDevice;
struct IFeelit;
struct IFeelitDevice;

struct CImmDeviceVftable
{
  void (__fastcall* __dt)(struct CImmDevice* this, const void* edx, uint32_t param_1);  /* 0x0 */
  struct IFeelit* (__fastcall* GetAPI)(struct CImmDevice* this);
  struct IFeelitDevice* (__fastcall* GetDevice)(struct CImmDevice* this);
  uint32_t (__fastcall* GetProductType)(struct CImmDevice* this);
  bool (__fastcall* GetDriverVersion)(struct CImmDevice* this, const void* edx, uint32_t* dwFFDriverVersion, uint32_t* dwFirmwareRevision, uint32_t* dwHardwareRevision);  /* 0x10 */
  int (__fastcall* GetProductName)(struct CImmDevice* this, const void* edx, char* lpszProductName, int nMaxCount);
  int (__fastcall* GetProductGUIDString)(struct CImmDevice* this, const void* edx, char* lpszProductName, int nMaxCount);
  GUID (__fastcall* GetProductGUID)(struct CImmDevice* this);
  bool (__fastcall* GetCurrentPosition)(struct CImmDevice* this, const void* edx, int32_t* lXPos, int32_t* lYPos);  /* 0x20 */
  bool (__fastcall* ChangeScreenResolution)(struct CImmDevice* this, const void* edx, bool bAutoSet, int32_t dwXScreenSize, int32_t dwYScreenSize);
  bool (__fastcall* SwitchToAbsoluteMode)(struct CImmDevice* this, const void* edx, bool bAbsMode);
  bool (__fastcall* prepare_device)(struct CImmDevice* this);
  void (__fastcall* reset)(struct CImmDevice* this);  /* 0x30 */
};
static_assert(sizeof(struct CImmDeviceVftable) == 0x34, "Data type is of wrong size");

struct CImmDevice
{
  struct CImmDeviceVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct CImmDevice) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_IMM_DEVICE_INCLUDED_H */
