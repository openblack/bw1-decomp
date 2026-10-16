#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMentalEditor.h"

#include "ColourConstants.h" /* For White */

#include "CreatureMental.h"

CreatureMental*       CreatureMentalEditor::Mind;
CreatureMentalEditor* CreatureMentalEditor::Instance;

void CreatureMentalEditor::InitialiseIcons() {}

void CreatureMentalEditor::ReleaseIcons() {}

void CreatureMentalEditor::Refresh() {}

void CreatureMentalEditor::Process() {}

int CreatureMentalEditor::ProcessHand(const MapCoords& coords, int, int)
{
	return 1;
}

CreatureMentalEditor::CreatureMentalEditor(CreatureMental* mental) {}

CreatureMentalEditor::~CreatureMentalEditor() {}

void CreatureMentalEditor::Draw() {}

void CreatureMentalEditor::Draw3D() {}

void CreatureMentalEditor::ProcessGameTurn() {}

void CreatureMentalEditor::DrawTextA(const char* text, unsigned long x, unsigned long y, float size, unsigned long red,
                                     unsigned long green, unsigned long blue)
{
}

void CreatureMentalEditor::DrawLine(unsigned long x0, unsigned long y0, unsigned long x1, unsigned long y1,
                                    LHPixel16& colour)
{
}

void CreatureMentalEditor::UpdateDraw() {}

void CreatureMentalEditor::Update() {}
