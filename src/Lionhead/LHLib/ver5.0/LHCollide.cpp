#include "LHCollide.h"
#include "Black/Collide.h"
#include "re_common.h"

#include "Lionhead/LH3DLib/development/LH3DMesh.h"

#include <cstdio>

NewCollide::Obj::Obj(float radius, LHPoint* position)
    : position(*position)
    , radius(radius)
    , r2(radius * radius)
    , angle(0.0f)
    , bounding_box(radius, 0.0f, radius)
    , iterator_list(NULL)
{
}

NewCollide::Obj::Obj(LHPoint* position, float bb_x, float bb_z, float angle)
    : position(*position)
    , radius(sqrtf(bb_x * bb_x + bb_z * bb_z))
    , r2(bb_x * bb_x + bb_z * bb_z)
    , angle(angle)
    , bounding_box(bb_x, 0.0f, bb_z)
    , iterator_list(NULL)
{
    CreateList();
}

bool NewCollide::Obj::Collide(NewCollide::List* other)
{
    for (int i = 0; i < other->direction; ++i)
    {
        if (other->objs[i]->Collide(this))
        {
            return true;
        }
    }
    return false;
}

bool NewCollide::List::Collide(const NewCollide::List* other)
{
    for (int j = 0; j < other->direction; ++j)
    {
        for (int i = 0; i < this->direction; ++i)
        {
            if (this->objs[i]->Collide(other->objs[j]))
            {
                return true;
            }
        }
    }
    return false;
}

bool32_t NewCollide::Obj::Collide(const NewCollide::Obj* other)
{
    float dx = this->position.x - other->position.x;
    float dz = this->position.z - other->position.z;
    float rr = this->radius * other->radius;

    if (dx * dx + dz * dz > rr + rr + this->r2 + other->r2)
    {
        return false;
    }

    if (this->iterator_list == NULL && other->iterator_list == NULL)
    {
        return true;
    }

    if (this->iterator_list == NULL && other->iterator_list != NULL)
    {
        return other->Collide(this);
    }
    else if (this->iterator_list != NULL && other->iterator_list == NULL)
    {
        return this->Collide(other);
    }
    else if (this->iterator_list != NULL && other->iterator_list != NULL)
    {
        return this->Collide(other->iterator_list);
    }
}

NewCollide::NewCollide(LH3DObject* obj)
    : obj(NULL)
{
    LH3DMesh* mesh = obj->GetMesh();

    LHPoint point = obj->matrix * mesh->bounding_box.centre;
    point.y = 0.0f;

    float x = mesh->bounding_box.size.x * obj->scale;
    float z = mesh->bounding_box.size.z * obj->scale;
    x = max(x, 1.0f);
    z = max(z, 1.0f);

    if (x / z > 1.4 || x / z > 1.4)
    {
        this->obj = new NewCollide::Obj(&point, x, z, obj->y_angle);
    }
    else
    {
        this->obj = new NewCollide::Obj(7.1f, &point);
    }
}
