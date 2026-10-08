#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include <iostream>
#include "GameTimeConstants.h"

#include <Lionhead/LH3DLib/development/LHPoint.h>

// The name is a guess, but not a free one. cl6 orders .bss by a hash of the symbol name, and the
// target needs this point after SecondsPerYear and ahead of EighthScale; "ZeroPoint" sorts last.
static const LHPoint OriginVector(0.0f, 0.0f, 0.0f);

// fabricated: an unreferenced 8-byte .bss slot after PI_OVER_2 and ahead of the zero-initialised
// statics. Nothing names it; this name hashes after "PI_OVER_2".
static double unused;

#include "GJProperty.h"

#include <stdio.h> /* For sprintf */

#include <Lionhead/LHFile/ver3.0/LHFilePath.h>  /* For g_GameDriveCharacter */
#include <Lionhead/LHFile/ver3.0/LHParseFile.h> /* For class LHParseFile */

#include "Persistent.h"      /* For class Persistent, class PersistentOwner */
#include "PSysSoundAction.h" /* For class PSysSoundAction */

#if defined(VERSION_BW1W100)
#define GJ_PROPERTY_SOURCE_FILE "C:\\dev\\black\\GJProperty.cpp"
#elif defined(VERSION_BW1W110)
#define GJ_PROPERTY_SOURCE_FILE "C:\\dev\\Black\\GJProperty.cpp"
#else
#define GJ_PROPERTY_SOURCE_FILE "C:\\dev\\MP\\Black\\GJProperty.cpp"
#endif

void Persistent::SetUniqueName()
{
	std::string className = "UNKNOWNCLASS";
	PersistenceRegistry.Names.Lookup(typeid(*this), className);
	std::string   name;
	unsigned long index = 0;
	do
	{
		std::stringstream stream;
		stream << className << index;
		index++;
		name = stream.str();
	} while (Owner != NULL && Owner->IsNameUsed(name.c_str()));
	SetName(name.c_str());
}

// The name is a guess, but not a free one: cl6 orders .bss by a hash of the symbol name, and the
// registry comes first in this unit's .bss, ahead of SecondsPerYear.
RegisterPersistent PersistenceRegistry;

RegisterPersistent::RegisterPersistent()
{
	static bool registered = false;
	if (!registered)
	{
		RegisterPersistentClasses();
		registered = true;
	}
}

void PropertyList::AddFloatProperty(const char* name, float* value, float min, float max)
{
	FloatValueProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 73) FloatValueProperty;
	property->Name = name;
	property->Value = value;
	property->Min = min;
	property->Max = max;
	Properties[name] = property;
}

void PropertyList::AddIntegerProperty(const char* name, long* value, long min, long max)
{
	IntegerValueProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 85) IntegerValueProperty;
	property->Name = name;
	property->Value = value;
	property->Min = min;
	property->Max = max;
	Properties[name] = property;
}

void PropertyList::AddSoundActionProperty(const char* name, PSysSoundAction* value)
{
	SoundActionProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 96) SoundActionProperty;
	property->Name = name;
	property->Value = value;
	Properties[name] = property;
}

void PropertyList::AddStringProperty(const char* name, std::string* value)
{
	StringProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 105) StringProperty;
	property->Name = name;
	property->Value = value;
	Properties[name] = property;
}

void PropertyList::AddFileNameProperty(const char* name, std::string* value, const std::string& extension)
{
	FileNameProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 114) FileNameProperty;
	property->Name = name;
	property->Value = value;
	property->Extension = extension;
	Properties[name] = property;
}

void PropertyList::AddBoolProperty(const char* name, bool* value)
{
	BoolProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 124) BoolProperty;
	property->Name = name;
	property->Value = value;
	Properties[name] = property;
}

void PropertyList::AddMeshEnumProperty(const char* name, MESH_LIST* value)
{
	MeshEnumProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 133) MeshEnumProperty;
	property->Name = name;
	property->Value = (long*)value;
	Properties[name] = property;
}

void PropertyList::AddAnimEnumProperty(const char* name, ANIM_LIST* value)
{
	AnimEnumProperty* property = new (GJ_PROPERTY_SOURCE_FILE, 142) AnimEnumProperty;
	property->Name = name;
	property->Value = (long*)value;
	Properties[name] = property;
}

void Property::WriteProperty(std::ostream* stream)
{
	*stream << Name << " " << TypeName << " " << GetAsString() << "\n";
}

std::string FloatValueProperty::GetAsString()
{
	float             propertyValue = *Value;
	float             value = propertyValue;
	std::stringstream stream;
	stream << value;
	return stream.str();
}

bool32_t FloatValueProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t    failed = false;
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	float value;
	*stream >> value;
	*Value = value;
	return !failed;
}

std::string StringProperty::GetAsString()
{
	return *Value == "" ? std::string("NULL_STRING") : *Value;
}

bool32_t StringProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t    failed = false;
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	std::string value;
	*stream >> value;
	if (value == "NULL_STRING")
	{
		value = "";
	}
	*Value = value;
	return !failed;
}

std::string IntegerValueProperty::GetAsString()
{
	long              value = *Value;
	std::stringstream stream;
	stream << value;
	return stream.str();
}

bool32_t IntegerValueProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t    failed = false;
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	long value;
	*stream >> value;
	*Value = value;
	return !failed;
}

LHParseFile* SoundActionProperty::ActionFile = NULL;

void SoundActionProperty::MakeLHActionFile()
{
	if (ActionFile == NULL)
	{
		char path[256];
		sprintf(path, "Data\\SoundAction.h");
		ActionFile = new (GJ_PROPERTY_SOURCE_FILE, 285) LHParseFile(path, " \t");
		if (!ActionFile->Open())
		{
			sprintf(path, "%c:\\Data\\SoundAction.h", g_GameDriveCharacter);
			ActionFile->filename = path;
			if (!ActionFile->Open())
			{
				delete ActionFile;
				ActionFile = NULL;
				return;
			}
		}
		if (!ActionFile->ParseEnumList())
		{
			delete ActionFile;
			ActionFile = NULL;
		}
	}
}

const PSysSoundAction& SoundActionProperty::GetSoundActionProperty()
{
	return *Value;
}

void SoundActionProperty::SetSoundActionProperty(const PSysSoundAction& value)
{
	*Value = value;
}

const char* FindEnumName(LHParseFile* file, long value)
{
	for (unsigned long i = 0; i < file->EnumCount; i++)
	{
		if (((LHEnumPair*)file->EnumPairs)[i].value == value)
		{
			return ((LHEnumPair*)file->EnumPairs)[i].name;
		}
	}
	return NULL;
}

std::string SoundActionProperty::GetAsString()
{
	if (ActionFile == NULL)
	{
		MakeLHActionFile();
	}
	std::stringstream stream;
	std::string       name;
	if (Value->Action < 0)
	{
		name = "NO_SOUND";
	}
	else
	{
		name = FindEnumName(ActionFile, Value->Action);
	}
	if (name == "")
	{
		name = "NO_SOUND";
	}
	bool onlyOne = false;
	stream << name << " " << "LOOPING" << " " << Value->Looping << " " << "ONLYONE" << " " << onlyOne << " "
		   << "SOFTRELEASE" << " " << Value->SoftRelease << " " << "USESURFACE" << " " << Value->UseSurface;
	return stream.str();
}

bool32_t SoundActionProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t failed = false;
	if (ActionFile == NULL)
	{
		MakeLHActionFile();
	}
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	std::string name;
	bool        onlyOne = false;
	bool32_t    looping = Value->Looping;
	bool32_t    softRelease = Value->SoftRelease;
	bool32_t    useSurface = Value->UseSurface;
	*stream >> name >> "LOOPING" >> looping >> "ONLYONE" >> onlyOne >> "SOFTRELEASE" >> softRelease >> "USESURFACE" >>
		useSurface;
	Value->Looping = looping;
	Value->SoftRelease = softRelease;
	Value->UseSurface = useSurface;
	if (name == "NO_SOUND")
	{
		Value->Action = -1;
	}
	else if (!ActionFile->FindEnumVal((char*)name.c_str(), &Value->Action))
	{
		Value->Action = -1;
	}
	return !failed;
}

void EnumProperty::MakeEnumFile()
{
	if (GetEnumFile() == NULL)
	{
		SetEnumFile(new (GJ_PROPERTY_SOURCE_FILE, 406) LHParseFile((char*)GetEnumFileName(), " \t"));
		if (!GetEnumFile()->Open())
		{
			delete GetEnumFile();
			SetEnumFile(NULL);
		}
		else if (!GetEnumFile()->ParseEnumList())
		{
			delete GetEnumFile();
			SetEnumFile(NULL);
		}
	}
}

const long& EnumProperty::GetEnumProperty()
{
	return *Value;
}

void EnumProperty::SetEnumProperty(const long& value)
{
	*Value = value;
}

std::string EnumProperty::GetAsString()
{
	if (GetEnumFile() == NULL)
	{
		MakeEnumFile();
	}
	std::stringstream stream;
	std::string       name;
	if (Value < 0)
	{
		name = GetNullEnumName();
	}
	else
	{
		name = FindEnumName(GetEnumFile(), *Value);
	}
	if (name == "")
	{
		name = "NO_SOUND";
	}
	stream << name;
	return stream.str();
}

bool32_t EnumProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t failed = false;
	if (GetEnumFile() == NULL)
	{
		MakeEnumFile();
	}
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	std::string name;
	*stream >> name;
	if (name == GetNullEnumName())
	{
		*Value = -1;
	}
	else if (!GetEnumFile()->FindEnumVal((char*)name.c_str(), Value))
	{
		*Value = -1;
	}
	return !failed;
}

LHParseFile* MeshEnumProperty::EnumFile = NULL;

const char* MeshEnumProperty::GetEnumFileName()
{
	return "Data\\AllMeshes.h";
}

const char* MeshEnumProperty::GetNullEnumName()
{
	return "MSH_INVALID";
}

LHParseFile* MeshEnumProperty::GetEnumFile()
{
	return EnumFile;
}

void MeshEnumProperty::SetEnumFile(LHParseFile* file)
{
	EnumFile = file;
}

LHParseFile* AnimEnumProperty::EnumFile = NULL;

const char* AnimEnumProperty::GetEnumFileName()
{
	return "Data\\AllMeshes.h";
}

const char* AnimEnumProperty::GetNullEnumName()
{
	return "ANM_INVALID";
}

LHParseFile* AnimEnumProperty::GetEnumFile()
{
	return EnumFile;
}

void AnimEnumProperty::SetEnumFile(LHParseFile* file)
{
	EnumFile = file;
}

std::string BoolProperty::GetAsString()
{
	bool              value = *Value;
	std::stringstream stream;
	stream << value;
	return stream.str();
}

bool32_t BoolProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t    failed = false;
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	bool value;
	*stream >> value;
	*Value = value;
	return !failed;
}

std::string PersistentPointerProperty::GetAsString()
{
	Persistent* persistent = *Pointer;
	std::string name;
	if (persistent != NULL)
	{
		name = persistent->GetName();
	}
	if (name == "")
	{
		name = "NULL_STRING";
	}
	return name;
}

bool32_t PersistentPointerProperty::ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
{
	bool32_t    failed = false;
	std::string type;
	*stream >> type;
	if (type != TypeName)
	{
		failed = true;
	}
	std::string name;
	*stream >> name;
	streamer->AddFixUpReference(name, Pointer);
	return !failed;
}

bool32_t PersistenceStreamer::Write(std::ostream* stream, Persistent* object)
{
	bool32_t    failed = false;
	std::string className = "";
	PersistenceRegistry.Names.Lookup(typeid(*object), className);
	if (className == "")
	{
		failed = true;
	}
	*stream << "BEGINCLASS " << className << " " << object->GetName() << "\n";
	failed |= !WriteProperties(stream, object);
	*stream << "ENDCLASS\n";
	return !failed;
}

bool32_t PersistenceStreamer::WriteAsCode(std::ostream* stream, Persistent* object)
{
	bool32_t    failed = false;
	std::string className = "";
	PersistenceRegistry.Names.Lookup(typeid(*object), className);
	if (className == "")
	{
		failed = true;
	}
	*stream << className << "*" << object->GetName() << " = new " << className << ";\n";
	*stream << "\n";
	failed |= !WritePropertiesAsCode(stream, object);
	*stream << "\n";
	return !failed;
}

bool32_t PersistenceStreamer::WriteProperties(std::ostream* stream, Persistent* object)
{
	PropertyList list;
	object->DefineProperties(&list);
	*stream << "BEGINPROPERTIES\n";
	for (std::map<std::string, Property*>::iterator it = list.Properties.begin(); it != list.Properties.end(); ++it)
	{
		*stream << "PROPERTY" << " " << it->second->Name << " " << it->second->TypeName << " "
				<< it->second->GetAsString() << "\n";
	}
	*stream << "ENDPROPERTIES\n";
	return true;
}

bool32_t PersistenceStreamer::WritePropertiesAsCode(std::ostream* stream, Persistent* object)
{
	PropertyList list;
	object->DefineProperties(&list);
	for (std::map<std::string, Property*>::iterator it = list.Properties.begin(); it != list.Properties.end(); ++it)
	{
		*stream << it->second->Name << "=" << it->second->GetAsString() << ";\n";
	}
	return true;
}

void PersistenceStreamer::AddFixUpReference(const std::string& name, Persistent** pointer)
{
	FixUps[pointer] = name;
}

bool32_t PersistenceStreamer::DoFixUps()
{
	bool32_t failed = false;
	for (std::map<Persistent**, std::string>::iterator it = FixUps.begin(); it != FixUps.end(); ++it)
	{
		if ((*it).second == "NULL_STRING")
		{
			*(*it).first = NULL;
		}
		else
		{
			bool found = false;
			for (LHLinkedNode<Persistent*>* node = Owner->Objects.GetStart(); node != NULL && !found;
			     node = node->next.Get())
			{
				if ((*it).second == node->payload->GetName())
				{
					found = true;
					*(*it).first = node->payload;
				}
			}
			if (!found)
			{
				failed = true;
			}
		}
	}
	return !failed;
}

bool32_t PersistenceStreamer::Read(std::istream* stream, PersistentOwner* owner, Persistent** object)
{
	Owner = owner;
	bool32_t    failed = false;
	std::string word;
	*stream >> word;
	if (word != "BEGINCLASS" && word != "")
	{
		failed = true;
	}
	*object = NULL;
	if (word != "")
	{
		return ReadClass(stream, owner, object);
	}
	DoFixUps();
	return !failed;
}

bool32_t PersistenceStreamer::ReadClass(std::istream* stream, PersistentOwner* owner, Persistent** object)
{
	bool32_t failed = false;
	*object = NULL;
	std::string className;
	*stream >> className;
	type_map<std::string>::MapType::iterator it;
	for (it = PersistenceRegistry.Names.Map.begin();
	     it != PersistenceRegistry.Names.Map.end() && it->second != className; it++)
	{
	}
	if (it == PersistenceRegistry.Names.Map.end())
	{
		*object = NULL;
		return false;
	}
	RegisterPersistent::StaticCreateFunc create = NULL;
	PersistenceRegistry.StaticCreators.Lookup(*it->first, create);
	if (it->second != className)
	{
		failed = true;
	}
	if (create != NULL)
	{
		*object = create(owner);
		if (*object == NULL)
		{
			return false;
		}
		std::string name;
		*stream >> name;
		(*object)->SetName(name.c_str());
		failed |= !ReadProperties(stream, *object);
		std::string word;
		*stream >> word;
		if (word != "ENDCLASS" && word != "")
		{
			failed = true;
		}
	}
	return !failed;
}

bool32_t PersistenceStreamer::ReadProperties(std::istream* stream, Persistent* object)
{
	bool32_t     failed = false;
	PropertyList list;
	object->DefineProperties(&list);
	std::string word;
	*stream >> word;
	if (word != "BEGINPROPERTIES" && word != "")
	{
		failed = true;
	}
	std::string name;
	*stream >> name;
	while (name == "PROPERTY")
	{
		*stream >> name;
		std::map<std::string, Property*>::iterator it = list.Properties.find(name);
		if (it != list.Properties.end())
		{
			failed |= !(*it).second->ReadProperty(stream, this);
		}
		*stream >> name;
	}
	return !failed;
}
