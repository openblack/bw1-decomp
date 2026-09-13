#include "Footpath.h"

#include "FootpathLink.h"       /* For struct GFootpathLink */
#include "GameOSFile.h"         /* For struct GameOSFile */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

uint32_t GFootpathLink::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		if (GameOSFile::WriteEnabled)
		{
			uint32_t count = FootpathList.count;
			int      written = 0;
			file.WriteSafe(FootpathList.count);
			for (LHLinkedNode<GFootpath*>* node = FootpathList.head.Get(); node != NULL; node = node->next.Get())
			{
				written++;
				if (written > (int)count)
				{
					GameOSFile::WriteEnabled = false;
					break;
				}
				if (!GameOSFile::WriteEnabled)
				{
					break;
				}
				file.WritePtr(node->payload);
			}
			// The list and its count are written separately; disagreeing means the
			// save would not deserialise, so fail it.
			if (GameOSFile::WriteEnabled && written != (int)count)
			{
				GameOSFile::WriteEnabled = false;
			}
		}
		return 1;
	}
	return 0;
}
