#include "CreatureMental.h"

#include <chlasm/Enum.h> /* For ABODE_TYPE_LAST, SEX_TYPE_LAST, TRIBE_TYPE_LAST */

#include "ColourConstants.h" /* For White */

char AttributeAllegiance::ValueNames[3][64] = {
	"Friendly", //
	"Enemy",    //
	"Ally",     //
};

char AttributeOrigin::ValueNames[3][64] = {
	"Natural",  //
	"Man-made", //
	"Magic",    //
};

char AttributeLife::ValueNames[2][64] = {
	"Low",  //
	"High", //
};

char AttributeTribe::ValueNames[TRIBE_TYPE_LAST][64] = {
	"Celtic",   //
	"African",  //
	"Aztec",    //
	"Japanese", //
	"Indian",   //
	"Egyptian", //
	"Greek",    //
	"Norse",    //
	"Tibetan",  //
};

char AttributeTownReligiousBeliefInYou::ValueNames[4][64] = {
	"VeryLow", //
	"Low",     //
	"Medium",  //
	"High",    //
};

char AttributeTownSize::ValueNames[3][64] = {
	"Small",
	"Medium",
	"Large",
};

char AttributeCreatureHeight::ValueNames[4][64] = {
	"VerySmall",
	"Small",
	"Medium",
	"Big",
};

char AttributeForestSize::ValueNames[3][64] = {
	"Small",
	"Medium",
	"Large",
};

char AttributeSex::ValueNames[SEX_TYPE_LAST][64] = {
	"Male",
	"Female",
};

char AttributeMobileObjectType::ValueNames[32][64] = {
	"Barrel",   //
	"Cart",     //
	"PotA",     //
	"PotB",     //
	"Food",     //
	"Poo",      //
	"WaterJug", //
	"Arrow",    //
	"Ball",     //
	"Cart",     //
	"FoodPot",  //
	"WoodPot",  //
	"FoodPile", //
	"WoodPile", //
};

// Indices are positional and do not line up with the ABODE_TYPE enumerators
// (LIVING_QUARTERS is 2, WINDMILL 10, TOTEM 20, STORAGE_PIT 36).
char AttributeAbodeType::ValueNames[ABODE_TYPE_LAST][64] = {
	"Invalid",    //
	"Living",     //
	"Invalid",    //
	"Windmill",   //
	"Totem",      //
	"Invalid",    //
	"Invalid",    //
	"Invalid",    //
	"StoragePit", //
};

char AttributeAbodeBeingBuilt::ValueNames[2][64] = {
	"IsBeingBuilt",
	"IsNotBeingBuilt",
};

char AttributeOnFire::ValueNames[2][64] = {
	"IsOnFire",
	"IsNotOnFire",
};
