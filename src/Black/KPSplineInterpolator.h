#ifndef BW1_DECOMP_KP_SPLINE_INTERPOLATOR_INCLUDED_H
#define BW1_DECOMP_KP_SPLINE_INTERPOLATOR_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GJBaseUtils.h" /* For GJArray */

// A key point of a cubic spline: the parameter, the value and the second derivative computed
// by t_spline.
template <class ValueType> class KPSI_Element
{
public:
	float     T;                /* 0x0 */
	ValueType Value;            /* 0x4 */
	ValueType SecondDerivative; /* 0x8 for float */
};

// The float instantiation is BW1W120 005b3760 (BW1M119 01342c10).
template <class T>
void t_spline(GJArray<KPSI_Element<T> >& elements, long count, float first_derivative, float last_derivative);

template <class T> class KPSplineInterpolator
{
public:
	enum BC_TYPE
	{
		BC_TYPE_NATURAL,
		BC_TYPE_CLAMPED,
	};

	// BW1W120 inlined BW1M119 01342ad0
	void CompV2()
	{
		float derivative = BCType == BC_TYPE_NATURAL ? 1e30f : 0.0f;
		t_spline(Elements, Elements.Size, derivative, derivative);
	}

	// BW1W120 inlined BW1M119 01342960
	void SetFromArray(const GJArray<float>& array)
	{
		long size = array.Size / 2 * 2;
		Elements.SetSize(size / 2);
		for (long i = 0; i < Elements.Size; i++)
		{
			Elements[i].T = array.Data[i * 2];
			Elements[i].Value = array.Data[i * 2 + 1];
		}
		CompV2();
	}

	GJArray<KPSI_Element<T> > Elements; /* 0x0 */
	BC_TYPE                   BCType;   /* 0x8 */
};
static_assert(sizeof(KPSplineInterpolator<float>) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_KP_SPLINE_INTERPOLATOR_INCLUDED_H */
