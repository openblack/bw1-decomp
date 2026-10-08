#ifndef BW1_DECOMP_GJ_PROPERTY_INCLUDED_H
#define BW1_DECOMP_GJ_PROPERTY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <iosfwd>   /* For std::istream */
#include <map>      /* For std::map */
#include <sstream>  /* For std::stringstream */
#include <string>   /* For std::string */
#include <typeinfo> /* For type_info */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST, enum ANIM_LIST */
#include <re_common.h>        /* For bool32_t */

#include "GJBaseUtils.h" /* For GJArray */

// Forward Declares

class AtomCollectionModifier;
class FloatProvider;
class LHParseFile;
class ParticleCreator;
class Persistent;
class PersistentOwner;
class TEventCondition;
class PSysSoundAction;

// Reads the text form of a Persistent hierarchy. The pointers named in the text are collected
// in FixUps and resolved once everything is loaded.
struct PersistenceStreamer
{
	// The map constructor is not inlined into PSysFileData::LoadFromFile (BW1W120 006b4c40), but
	// the clear() that follows it is.
	PersistenceStreamer() { FixUps.clear(); }

	// BW1W120 005873e0 BW1M119 012d44c0
	bool32_t ReadProperties(std::istream* stream, Persistent* object);
	// BW1W120 00587180 BW1M119 012d9300
	bool32_t ReadClass(std::istream* stream, PersistentOwner* owner, Persistent** object);
	// BW1W120 00587020 BW1M119 012dc510
	bool32_t Read(std::istream* stream, PersistentOwner* owner, Persistent** object);
	// BW1W120 00586f00 BW1M119 012dc680
	bool32_t DoFixUps();
	// BW1W120 00586d50 BW1M119 012ddc10
	void AddFixUpReference(const std::string& name, Persistent** pointer);

	// The writers have no BW1M119 counterpart, so their names are invented. Write and
	// WriteProperties produce the BEGINCLASS/ENDCLASS text that Read and ReadProperties parse;
	// WriteAsCode and WritePropertiesAsCode emit the same hierarchy as C++ statements.
	// BW1W120 005869c0 BW1M119 null
	bool32_t WriteProperties(std::ostream* stream, Persistent* object);
	// BW1W120 005866a0 BW1M119 null
	bool32_t Write(std::ostream* stream, Persistent* object);
	// BW1W120 00586bb0 BW1M119 null
	bool32_t WritePropertiesAsCode(std::ostream* stream, Persistent* object);
	// BW1W120 00586830 BW1M119 null
	bool32_t WriteAsCode(std::ostream* stream, Persistent* object);

	std::map<Persistent**, std::string> FixUps;
	PersistentOwner*                    Owner;
};
static_assert(sizeof(PersistenceStreamer) == 0x14, "Data type is of wrong size");

// The original header is GJProperty.h: the templated property helpers below allocate with
// operator new(<path of this header>, line), and the paths and line numbers survive in every build.
#if defined(VERSION_BW1W100)
#define GJ_PROPERTY_FILE "C:\\dev\\black\\GJProperty.h"
#elif defined(VERSION_BW1W110)
#define GJ_PROPERTY_FILE "C:\\dev\\Black\\GJProperty.h"
#else
#define GJ_PROPERTY_FILE "C:\\dev\\MP\\Black\\GJProperty.h"
#endif

class Property
{
public:
	// BW1W120 inlined BW1M119 012dfa70
	Property() {}

	// BW1W120 purecall BW1M119 purecall
	virtual std::string GetAsString() = 0;
	// Inline: the Windows copy follows PropertyList::AddFloatProperty, the first user of a vtable.
	// BW1W120 00584630 BW1M119 012d4450
	virtual std::string GetAsUserReadableString() { return GetAsString(); }
	// BW1W120 purecall BW1M119 purecall
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer) = 0;

	// BW1W120 00584e20 BW1M119 null
	void WriteProperty(std::ostream* stream);

	const char* Name;     /* 0x4 */
	const char* TypeName; /* 0x8 */
};
static_assert(sizeof(Property) == 0xc, "Data type is of wrong size");

class BoolProperty : public Property
{
public:
	BoolProperty() { TypeName = "BOOL"; }

	// BW1W120 00586220 BW1M119 012ddf50
	virtual std::string GetAsString();
	// BW1W120 00586350 BW1M119 012dde30
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);

	bool* Value; /* 0xc */
};
static_assert(sizeof(BoolProperty) == 0x10, "Data type is of wrong size");

class FloatProperty : public Property
{
public:
	// BW1W120 006ae510 BW1M119 012dffa0
	FloatProperty() { TypeName = "FLOAT"; }

	// BW1W120 purecall BW1M119 purecall
	virtual float GetFloatProperty() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetFloatProperty(float value) = 0;

	float Min; /* 0xc */
	float Max; /* 0x10 */
};
static_assert(sizeof(FloatProperty) == 0x14, "Data type is of wrong size");

class IntegerProperty : public Property
{
public:
	// BW1W120 006ac0b0 BW1M119 012dfe40
	IntegerProperty() { TypeName = "INTEGER"; }

	// BW1W120 purecall BW1M119 purecall
	virtual long GetIntegerProperty() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetIntegerProperty(long value) = 0;

	long Min; /* 0xc */
	long Max; /* 0x10 */
};
static_assert(sizeof(IntegerProperty) == 0x14, "Data type is of wrong size");

class FloatValueProperty : public FloatProperty
{
public:
	FloatValueProperty() { TypeName = "FLOAT"; }

	// BW1W120 00584ec0 BW1M119 012df620
	virtual std::string GetAsString();
	// BW1W120 00584ff0 BW1M119 012df500
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);
	// BW1W120 00584640 BW1M119 012e4640
	virtual float GetFloatProperty() { return *Value; }
	// BW1W120 00584650 BW1M119 012e4690
	virtual void SetFloatProperty(float value) { *Value = value; }

	float* Value;
};
static_assert(sizeof(FloatValueProperty) == 0x18, "Data type is of wrong size");

class IntegerValueProperty : public IntegerProperty
{
public:
	IntegerValueProperty() { TypeName = "INTEGER"; }

	// BW1W120 00585380 BW1M119 012df180
	virtual std::string GetAsString();
	// BW1W120 005854b0 BW1M119 012df060
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);
	// BW1W120 00584770 BW1M119 012e45a0
	virtual long GetIntegerProperty() { return *Value; }
	// BW1W120 00584780 BW1M119 012e45f0
	virtual void SetIntegerProperty(long value) { *Value = value; }

	long* Value;
};
static_assert(sizeof(IntegerValueProperty) == 0x18, "Data type is of wrong size");

class StringProperty : public Property
{
public:
	// BW1W120 inlined BW1M119 012dfc10
	StringProperty() { TypeName = "STRING"; }

	// BW1W120 005850d0 BW1M119 012df420
	virtual std::string GetAsString();
	// BW1W120 00585200 BW1M119 012df2c0
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);

	std::string* Value;
};
static_assert(sizeof(StringProperty) == 0x10, "Data type is of wrong size");

class FileNameProperty : public StringProperty
{
public:
	std::string Extension;
};
static_assert(sizeof(FileNameProperty) == 0x20, "Data type is of wrong size");

class SoundActionProperty : public Property
{
public:
	SoundActionProperty() { TypeName = "SOUND_ACTION"; }

	// BW1W120 00585740 BW1M119 012deb30
	virtual std::string GetAsString();
	// BW1W120 00585a70 BW1M119 012de8a0
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);

	// BW1W120 00585590 BW1M119 012dee90
	static void MakeLHActionFile();

	// BW1W120 005856d0 BW1M119 null
	const PSysSoundAction& GetSoundActionProperty();
	// BW1W120 005856e0 BW1M119 null
	void SetSoundActionProperty(const PSysSoundAction& value);

	// BW1W120 00d0666c
	static LHParseFile* ActionFile;

	PSysSoundAction* Value;
};
static_assert(sizeof(SoundActionProperty) == 0x10, "Data type is of wrong size");

class EnumProperty : public Property
{
public:
	// BW1W120 inlined BW1M119 012df850
	EnumProperty() { TypeName = "ENUM"; }

	// BW1W120 00585e10 BW1M119 012de4a0
	virtual std::string GetAsString();
	// BW1W120 00586010 BW1M119 012de2e0
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);
	// BW1W120 purecall BW1M119 purecall
	virtual const char* GetNullEnumName() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual const char* GetEnumFileName() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LHParseFile* GetEnumFile() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetEnumFile(LHParseFile* file) = 0;

	// BW1W120 00585cd0 BW1M119 012de690
	void MakeEnumFile();

	// BW1W120 00585df0 BW1M119 null
	const long& GetEnumProperty();
	// BW1W120 00585e00 BW1M119 null
	void SetEnumProperty(const long& value);

	long* Value;
};
static_assert(sizeof(EnumProperty) == 0x10, "Data type is of wrong size");

class MeshEnumProperty : public EnumProperty
{
public:
	// BW1W120 005861b0 BW1M119 012de240
	virtual const char* GetNullEnumName();
	// BW1W120 005861a0 BW1M119 012de290
	virtual const char* GetEnumFileName();
	// BW1W120 005861c0 BW1M119 012de200
	virtual LHParseFile* GetEnumFile();
	// BW1W120 005861d0 BW1M119 012de1b0
	virtual void SetEnumFile(LHParseFile* file);

	// BW1W120 00d06670
	static LHParseFile* EnumFile;
};

class AnimEnumProperty : public EnumProperty
{
public:
	// BW1W120 005861f0 BW1M119 012de110
	virtual const char* GetNullEnumName();
	// BW1W120 005861e0 BW1M119 012de160
	virtual const char* GetEnumFileName();
	// BW1W120 00586200 BW1M119 012de0d0
	virtual LHParseFile* GetEnumFile();
	// BW1W120 00586210 BW1M119 012de080
	virtual void SetEnumFile(LHParseFile* file);

	// BW1W120 00d06674
	static LHParseFile* EnumFile;
};

class TPointerProperty : public Property
{
public:
	// BW1W120 006b0160 BW1M119 inlined
	TPointerProperty() { TypeName = "PERSIS_PNTR"; }

	// BW1W120 purecall BW1M119 purecall
	virtual bool32_t IsCompatible(const Persistent* value) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual Persistent* GetAsPointer() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetAsPointer(Persistent* value) = 0;
};
static_assert(sizeof(TPointerProperty) == 0xc, "Data type is of wrong size");

template <class T> class PointerProperty : public TPointerProperty
{
public:
	// The derived constructors repeat their base's type name; the inlined copies store the
	// vtable before the name.
	// BW1W120 006c5150 BW1M119 inlined
	PointerProperty() { TypeName = "PERSIS_PNTR"; }

	virtual std::string GetAsString()
	{
		std::string name;
		if (*Pointer != NULL)
		{
			name = (*Pointer)->GetName();
		}
		if (name == "")
		{
			name = "NULL_STRING";
		}
		return name;
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
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
		streamer->AddFixUpReference(name, (Persistent**)Pointer);
		return !failed;
	}
	virtual Persistent* GetAsPointer() { return *Pointer; }
	virtual void        SetAsPointer(Persistent* value) { *Pointer = dynamic_cast<T*>(value); }
	virtual bool32_t    IsCompatible(const Persistent* value)
	{
		return value == NULL || dynamic_cast<const T*>(value) != NULL;
	}

	T** Pointer;
};

class PersistentPointerProperty : public Property
{
public:
	// BW1W120 00586430 BW1M119 null
	virtual std::string GetAsString();
	// BW1W120 00586570 BW1M119 null
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer);

	Persistent** Pointer;
};

class BoolArrayProperty : public Property
{
public:
	// BW1W120 purecall BW1M119 purecall
	virtual void GetArray(GJArray<bool>* array) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetArray(const GJArray<bool>& array) = 0;
};

template <class T> class TemplateBoolArrayProperty : public BoolArrayProperty
{
public:
	typedef unsigned long (T::*GetSizeFunc)();
	typedef void (T::*SetSizeFunc)(unsigned long size);
	typedef bool (T::*GetFunc)(unsigned long index);
	typedef void (T::*SetFunc)(unsigned long index, bool value);

	TemplateBoolArrayProperty() { TypeName = "ARRAY"; }

	virtual std::string GetAsString()
	{
		std::stringstream stream;
		unsigned long     size = (Object->*GetSize)();
		stream << "SIZE" << " " << size << " ";
		for (unsigned long i = 0; i < size; i++)
		{
			bool value = (Object->*Get)(i);
			stream << value << " ";
		}
		return stream.str();
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
	{
		bool32_t    failed = false;
		std::string text;
		*stream >> text;
		if (text != TypeName)
		{
			failed = true;
		}
		*stream >> text;
		if (text != "SIZE")
		{
			failed = true;
		}
		unsigned long size;
		*stream >> size;
		(Object->*SetSize)(size);
		for (unsigned long i = 0; i < size; i++)
		{
			bool value;
			*stream >> value;
			(Object->*Set)(i, value);
		}
		return !failed;
	}
	virtual void GetArray(GJArray<bool>* array)
	{
		array->Clear();
		array->SetSize((Object->*GetSize)());
		for (long i = 0; i < array->Size; i++)
		{
			(*array)[i] = (Object->*Get)(i);
		}
	}
	virtual void SetArray(const GJArray<bool>& array)
	{
		(Object->*SetSize)(array.Size);
		for (long i = 0; i < array.Size; i++)
		{
			(Object->*Set)(i, array.Data[i]);
		}
	}

	T*          Object;
	GetSizeFunc GetSize;
	SetSizeFunc SetSize;
	GetFunc     Get;
	SetFunc     Set;
};

class FloatArrayProperty : public Property
{
public:
	// BW1W120 purecall BW1M119 purecall
	virtual void GetArray(GJArray<float>* array) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetArray(const GJArray<float>& array) = 0;
};

template <class T> class TemplateFloatArrayProperty : public FloatArrayProperty
{
public:
	typedef void (T::*GetFunc)(GJArray<float>* array);
	typedef void (T::*SetFunc)(const GJArray<float>& array);

	TemplateFloatArrayProperty() { TypeName = "ARRAY"; }

	virtual std::string GetAsString()
	{
		std::stringstream stream;
		GJArray<float>    array;
		(Object->*Get)(&array);
		long size = array.GetSize();
		stream << "SIZE" << " " << size << " ";
		for (long i = 0; i < size; i++)
		{
			stream << array[i] << " ";
		}
		return stream.str();
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
	{
		std::string text;
		*stream >> text;
		*stream >> text;
		long size;
		*stream >> size;
		GJArray<float> array;
		array.SetSize(size);
		for (long i = 0; i < size; i++)
		{
			*stream >> array.Data[i];
		}
		(Object->*Set)(array);
		return true;
	}
	virtual void GetArray(GJArray<float>* array) { (Object->*Get)(array); }
	virtual void SetArray(const GJArray<float>& array) { (Object->*Set)(array); }

	T*      Object;
	GetFunc Get;
	SetFunc Set;
};

class IntegerArrayProperty : public Property
{
public:
	// BW1W120 purecall BW1M119 purecall
	virtual void GetArray(GJArray<long>* array) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void SetArray(const GJArray<long>& array) = 0;

	long Min;
	long Max;
};

template <class T> class TemplateIntegerArrayProperty : public IntegerArrayProperty
{
public:
	typedef unsigned long (T::*GetSizeFunc)();
	typedef void (T::*SetSizeFunc)(unsigned long size);
	typedef long (T::*GetFunc)(unsigned long index);
	typedef void (T::*SetFunc)(unsigned long index, long value);

	TemplateIntegerArrayProperty() { TypeName = "ARRAY"; }

	virtual std::string GetAsString()
	{
		std::stringstream stream;
		long              size = (Object->*GetSize)();
		stream << "SIZE" << " " << size << " ";
		for (long i = 0; i < size; i++)
		{
			long value = (Object->*Get)(i);
			stream << value << " ";
		}
		return stream.str();
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
	{
		bool32_t    failed = false;
		std::string text;
		*stream >> text;
		if (text != TypeName)
		{
			failed = true;
		}
		*stream >> text;
		if (text != "SIZE")
		{
			failed = true;
		}
		long size;
		*stream >> size;
		(Object->*SetSize)(size);
		for (long i = 0; i < size; i++)
		{
			long value;
			*stream >> value;
			(Object->*Set)(i, value);
		}
		return !failed;
	}
	virtual void GetArray(GJArray<long>* array)
	{
		array->Clear();
		array->SetSize((Object->*GetSize)());
		for (long i = 0; i < array->Size; i++)
		{
			(*array)[i] = (Object->*Get)(i);
		}
	}
	virtual void SetArray(const GJArray<long>& array)
	{
		(Object->*SetSize)(array.Size);
		for (long i = 0; i < array.Size; i++)
		{
			(Object->*Set)(i, array.Data[i]);
		}
	}

	T*          Object;
	GetSizeFunc GetSize;
	SetSizeFunc SetSize;
	GetFunc     Get;
	SetFunc     Set;
};

template <class T> class GetSetFloatProperty : public FloatProperty
{
public:
	typedef float (T::*GetFunc)() const;
	typedef void (T::*SetFunc)(float value);

	GetSetFloatProperty() { TypeName = "FLOAT"; }

	virtual std::string GetAsString()
	{
		float             value = (Object->*Get)();
		std::stringstream stream;
		stream << value;
		return stream.str();
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
	{
		std::string name;
		*stream >> name;
		float value;
		*stream >> value;
		(Object->*Set)(value);
		return true;
	}
	virtual float GetFloatProperty() { return (Object->*Get)(); }
	virtual void  SetFloatProperty(float value) { (Object->*Set)(value); }

	T*      Object;
	GetFunc Get;
	SetFunc Set;
};

template <class T> class GetSetIntegerProperty : public IntegerProperty
{
public:
	typedef long (T::*GetFunc)();
	typedef void (T::*SetFunc)(long value);

	// The original sets the FLOAT type name here, overriding IntegerProperty's INTEGER.
	GetSetIntegerProperty() { TypeName = "FLOAT"; }

	virtual std::string GetAsString()
	{
		long              value = (Object->*Get)();
		std::stringstream stream;
		stream << value;
		return stream.str();
	}
	virtual bool32_t ReadProperty(std::istream* stream, PersistenceStreamer* streamer)
	{
		std::string name;
		*stream >> name;
		long value;
		*stream >> value;
		(Object->*Set)(value);
		return true;
	}
	virtual long GetIntegerProperty() { return (Object->*Get)(); }
	virtual void SetIntegerProperty(long value) { (Object->*Set)(value); }

	T*      Object;
	GetFunc Get;
	SetFunc Set;
};

class PropertyList
{
public:
	// BW1W120 inlined BW1M119 012d6a30
	~PropertyList() { Clear(); }

	// BW1W120 inlined BW1M119 012d46b0
	void Clear()
	{
		std::map<std::string, Property*>::iterator it;
		for (it = Properties.begin(); it != Properties.end(); ++it)
		{
			delete it->second;
		}
		Properties.erase(Properties.begin(), Properties.end());
	}

	void RemoveProperty(const char* name)
	{
		std::map<std::string, Property*>::iterator it = Properties.find(name);
		if (it != Properties.end())
		{
			delete it->second;
			Properties.erase(it);
		}
	}

	// BW1W120 00584520 BW1M119 012dfe90
	void AddFloatProperty(const char* name, float* value, float min, float max);
	// BW1W120 00584660 BW1M119 012dfd60
	void AddIntegerProperty(const char* name, long* value, long min, long max);
	// BW1W120 00584790 BW1M119 012dfc60
	void AddSoundActionProperty(const char* name, PSysSoundAction* value);
	// BW1W120 005848a0 BW1M119 null
	void AddStringProperty(const char* name, std::string* value);
	// BW1W120 005849b0 BW1M119 012dfaa0
	void AddFileNameProperty(const char* name, std::string* value, const std::string& extension);
	// BW1W120 00584af0 BW1M119 012df990
	void AddBoolProperty(const char* name, bool* value);
	// BW1W120 00584c00 BW1M119 012df8a0
	void AddMeshEnumProperty(const char* name, MESH_LIST* value);
	// BW1W120 00584d10 BW1M119 012df760
	void AddAnimEnumProperty(const char* name, ANIM_LIST* value);

	// The templated helpers are inlined everywhere on Mac; their names are reconstructed.

	// BW1W120 006c44d0 BW1M119 inlined
	template <class T>
	void AddGetSetFloatProperty(const char* name, T* object, float (T::*get)() const, void (T::*set)(float value),
	                            float min, float max)
	{
		GetSetFloatProperty<T>* property = new (GJ_PROPERTY_FILE, 844) GetSetFloatProperty<T>;
		property->Object = object;
		property->Name = name;
		property->Get = get;
		property->Set = set;
		property->Min = min;
		property->Max = max;
		Properties[name] = property;
	}

	template <class T>
	void AddGetSetIntegerProperty(const char* name, T* object, long (T::*get)(), void (T::*set)(long value), long min,
	                              long max)
	{
		GetSetIntegerProperty<T>* property = new (GJ_PROPERTY_FILE, 859) GetSetIntegerProperty<T>;
		property->Object = object;
		property->Name = name;
		property->Get = get;
		property->Set = set;
		property->Min = min;
		property->Max = max;
		Properties[name] = property;
	}

	template <class T>
	void AddIntegerArrayProperty(const char* name, T* object, unsigned long (T::*get_size)(),
	                             void (T::*set_size)(unsigned long size), long (T::*get)(unsigned long index),
	                             void (T::*set)(unsigned long index, long value), long min, long max)
	{
		TemplateIntegerArrayProperty<T>* property = new (GJ_PROPERTY_FILE, 876) TemplateIntegerArrayProperty<T>;
		property->Object = object;
		property->Name = name;
		property->GetSize = get_size;
		property->SetSize = set_size;
		property->Get = get;
		property->Set = set;
		property->Min = min;
		property->Max = max;
		Properties[name] = property;
	}

	template <class T>
	void AddFloatArrayProperty(const char* name, T* object, void (T::*get)(GJArray<float>* array),
	                           void (T::*set)(const GJArray<float>& array))
	{
		TemplateFloatArrayProperty<T>* property = new (GJ_PROPERTY_FILE, 895) TemplateFloatArrayProperty<T>;
		property->Object = object;
		property->Name = name;
		property->Get = get;
		property->Set = set;
		Properties[name] = property;
	}

	template <class T>
	void AddBoolArrayProperty(const char* name, T* object, unsigned long (T::*get_size)(),
	                          void (T::*set_size)(unsigned long size), bool (T::*get)(unsigned long index),
	                          void (T::*set)(unsigned long index, bool value))
	{
		TemplateBoolArrayProperty<T>* property = new (GJ_PROPERTY_FILE, 910) TemplateBoolArrayProperty<T>;
		property->Object = object;
		property->Name = name;
		property->GetSize = get_size;
		property->SetSize = set_size;
		property->Get = get;
		property->Set = set;
		Properties[name] = property;
	}

	template <class T> void AddPointerProperty(const char* name, T** pointer)
	{
		PointerProperty<T>* property = new (GJ_PROPERTY_FILE, 924) PointerProperty<T>;
		property->Name = name;
		property->Pointer = pointer;
		Properties[name] = property;
	}

	std::map<std::string, Property*> Properties; /* 0x0 */
};

// A map keyed on the run-time type of the persistent classes.
template <class T> class type_map
{
public:
	class compare
	{
	public:
		bool operator()(const type_info* a, const type_info* b) const { return a->before(*b) != 0; }
	};

	typedef std::map<const type_info*, T, compare> MapType;

	T&   operator[](const type_info& key) { return Map[&key]; }
	bool Lookup(const type_info& key, T& value)
	{
		typename MapType::const_iterator it = Map.find(&key);
		if (it != Map.end())
		{
			value = it->second;
			return true;
		}
		return false;
	}

	MapType Map; /* 0x0 */
};

// The registry of the persistent classes, filled by the Register* methods in PSysProperties.cpp.
// The constructor and destructor live with the property code (BW1M119 012dfff0, 012ff0b0).
class RegisterPersistent
{
public:
	typedef Persistent* (*StaticCreateFunc)(PersistentOwner* owner);
	typedef FloatProvider* (*FloatProviderCreateFunc)(PersistentOwner* owner);
	typedef ParticleCreator* (*ParticleCreatorCreateFunc)(PersistentOwner* owner);
	typedef TEventCondition* (*ConditionCreateFunc)(PersistentOwner* owner);
	typedef AtomCollectionModifier* (*ModifierCreateFunc)(PersistentOwner* owner);

	// BW1W120 00584470 BW1M119 012dfff0
	RegisterPersistent();

	// BW1W120 006c0ef0 BW1M119 01449870
	void RegisterPersistentClasses();
	// BW1W120 006b85a0 BW1M119 01449900
	void RegisterModifiers();
	// BW1W120 006b7bb0 BW1M119 014580e0
	void RegisterFloatProviders();
	// BW1W120 006b6110 BW1M119 01458f90
	void RegisterConditions();
	// BW1W120 006b53b0 BW1M119 0145bb40
	void RegisterParticleCreators();

	type_map<std::string>               Names;                   /* 0x0 */
	type_map<StaticCreateFunc>          StaticCreators;          /* 0x10 */
	type_map<FloatProviderCreateFunc>   FloatProviderCreators;   /* 0x20 */
	type_map<ParticleCreatorCreateFunc> ParticleCreatorCreators; /* 0x30 */
	type_map<ConditionCreateFunc>       ConditionCreators;       /* 0x40 */
	type_map<ModifierCreateFunc>        ModifierCreators;        /* 0x50 */
};

// TODO: Should not be using an extern. Remove this
// A plain global, not a static member: its atexit destructor is unguarded, and
// Persistent::SetUniqueName (BW1W120 00583f80) uses it ahead of its definition.
// BW1W120 00d065e0
extern RegisterPersistent PersistenceRegistry;

// BW1W120 00585700 BW1M119 012dee10
const char* FindEnumName(LHParseFile* file, long value);

#endif /* BW1_DECOMP_GJ_PROPERTY_INCLUDED_H */
