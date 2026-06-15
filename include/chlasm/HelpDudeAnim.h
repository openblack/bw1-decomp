//Revision courtesy of herolich1 

#ifndef __HELPDUDEANIM_H__
#define __HELPDUDEANIM_H__

//------------------------------------------------------------------------------------------------------------------------
enum ANIMLIST
{
	ANIM_STAND,				//Idle (useless)
	ANIM_HOVER,				//Move about? (useless)
	ANIM_HOVERL,			//Move about? (useless)
	ANIM_HOVERR,			//Move about? (useless)
	ANIM_WINGS,				//Wings? (useless)
	ANIM_LEYE,				//Closes left eye
	ANIM_REYE,				//Closes right eye
	ANIM_VOWELE,			//Used for speaking (useless)
	ANIM_VOWELO,			//Used for speaking (useless)
	ANIM_VOWELS,			//Used for speaking (useless)
	ANIM_EM0,				//Smile (ends early)
	ANIM_EM1,				//Frown (ends early)
	ANIM_EM2,				//Sad (ends early)
	ANIM_EM3,				//Good: closes eyes - Evil: tilts head (ends early)
	ANIM_EM4,				//Shock (ends early)
	ANIM_EM5,				//Raises eyebrow (ends early)
	ANIM_EM6,				//Angry (ends early)
	//ANIM_EM7,				<-- CI
	ANIM_LOOKLR,			//Looks up for a second? (useless)
	ANIM_LOOKUD,			//Looks up for a second? (useless)
	ANIM_NOD,				//Nods
	ANIM_SHAKE,				//Shakes
	ANIM_COCK,				//Tilts head
	ANIM_HEADINHANDS,		//Good: head in hands - Evil: facepalms
	ANIM_LAUGH,				//Laughing
	ANIM_CROSSARMS,			//Good: rests arms on sides - Evil: nothing
	ANIM_SPARE,				//Nothing (useless)
	ANIM_POINTLINTRO,		//Points
	ANIM_POINTL,			//Points (redundant)
	ANIM_POINTRINTRO,		//Points (redundant)
	ANIM_POINTR,			//Points (redundant)
	ANIM_HOVERSTABLE,		//Move about? (useless)
	ANIM_AVOIDL,			//Dodges to the left
	ANIM_AVOIDR,			//Dodges to the right
	ANIM_AVOIDU,			//Dodges to the top
	ANIM_AVOIDD,			//Dodges to the bottom
	ANIM_HANDSONHIPS,		//Good: hands indeed on hips - Evil: nothing
	ANIM_SPARE0,			//Shrugs (same as ANIM_SHRUG)
	ANIM_SHAKEFINGER,		//Shakes finger at you
	ANIM_SCRATCHHEAD,		//Scratches back of the head
	ANIM_SCRATCHCHIN,		//Good: scratches chin (or beard) - Evil: scratches the side of his head
	ANIM_PICKNOSE,			//Good: ??? - Evil: pick nose
	ANIM_POINTATCAMERA,		//Point at camera
	ANIM_HANGHEAD,			//Hanging heads down in shame (same as sulk and cry)
	ANIM_SULK,				//Sulking (same as hanghead and cry)
	ANIM_CRYING,			//Crying (same as sulk and hanghead)
	ANIM_GOINVISIBLE,		//They flash in and out of existence as they emote a bit
	ANIM_DANCE,				//They do be shmoovin
	ANIM_PRESSFACE,			//Good: nothing - Evil: "Let's get out projectile throwing skill up to scratch!"
	ANIM_STROKEBEARD,		//Good: strokes beard - Evil: scratches back of head
	ANIM_COVEREYES,			//Good: covers eyes - Evil: nothing
	ANIM_PRAY,				//Good: does the lotus position - Evil: nothing
	ANIM_PUNCHAIR,			//Good: punches the air - Evil: does reverse air punch
	ANIM_WAVENO,			//Waves both hands with wide eyes
	ANIM_DODGY,				//Does the "So so" motion
	ANIM_DISMISSIVEWAVE,	//Does a dismissive wave
	ANIM_RUDE,				//Good: "He is crazy" - Evil: moves claw over neck
	ANIM_HEADSLAP,			//Facepalms
	ANIM_KNOCKONSCREEN,		//Actually flies up to you and knocks on your screen
	ANIM_WANKER,			//Good: nothing - Evil: moves claw over neck (see rude)
	ANIM_HANDGUN,			//Good: nothing - Evil: uses a fake gun on himself for comedy, with sound effects
	ANIM_BURP,				//Good: nothing - Evil: burps?
	ANIM_FART,				//Good: nothing - Evil: does the motions of a fart
	ANIM_TRIUMPH,			//Celebrates
	ANIM_SHRUG,				//Shrugs (Same as ANIM_SPARE0)
	ANIM_CLINGL,			//Clings to bottom
	ANIM_CLINGR,			//Clings to bottom?
	ANIM_CLINGU,			//Clings to bottom?
	ANIM_CLINGD,			//Clings to bottom?
	ANIM_GIMMEFIVE,			//Good: scratches head and looks around? - Evil: does a throwing motion and looks to the side
	ANIM_LOOKLRSTABLE,		//Looks around before snapping back
	ANIM_LOOKUDSTABLE,		//Looks around before snapping back
	ANIM_CHUCKLE,			//Chuckling
	//ANIM_BLOW,			<-- CI
	//ANIM_SPARE5,			<-- CI
	//ANIM_SPARE6,			<-- CI
	//ANIM_SPARE7,			<-- CI
	//ANIM_SPARE8,			<-- CI
	//ANIM_SPARE9,			<-- CI
	//ANIM_SPARE10,			<-- CI
	ANIM_LAST,
};


#endif //__HELPDUDEANIM_H__