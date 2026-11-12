#ifndef BW1_DECOMP_LHDLL_TRANSPORT_INCLUDED_H
#define BW1_DECOMP_LHDLL_TRANSPORT_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHReturn.h>                    /* For enum LH_RETURN */
#include <Lionhead/LHMultiplayer/ver4.0/LHMultiplayerExport.h> /* For LH_MULTIPLAYER_API */
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h>     /* For enum LH_TRANSPORT_TYPE */

class LHNetEvent;

template <class T> class LHDynamicQueue;

struct LHNetMessageFormatDescriptor
{
	long  Type;
	char* Format;
};

class LH_MULTIPLAYER_API LHTransport
{
public:
	// BW1W120 10022450 BW1M119 0111b280 (LHCombined Release)
	virtual ~LHTransport();

	// BW1W120 100224a0 BW1M119 0111afd0 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);
	// BW1W120 10022550 BW1M119 0111ae40 (LHCombined Release)
	virtual LH_RETURN OpenConnectionToTransport(LHTransport* transport, void (*callback)(void*), void* context);
	// BW1W120 10022690 BW1M119 0111aaf0 (LHCombined Release)
	virtual void Close();
	// BW1W120 10022830 BW1M119 0111a2d0 (LHCombined Release)
	virtual LHNetEvent* Read(unsigned long timeout);
	// BW1W120 10022790 BW1M119 0111a970 (LHCombined Release)
	virtual void Write(LHNetEvent* net_event);

	// BW1W120 10022a70 BW1M119 01119b20 (LHCombined Release)
	static LHTransport* Create(LH_TRANSPORT_TYPE type);
	// BW1W120 10022c10 BW1M119 01119a40 (LHCombined Release)
	static void Destroy(LHTransport* transport);
};

#endif /* BW1_DECOMP_LHDLL_TRANSPORT_INCLUDED_H */
