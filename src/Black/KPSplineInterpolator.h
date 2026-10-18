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

// Evaluates the cubic spline through the key points at t. The float instantiation is BW1W120 006a7eb0
// (BW1M119 01343220).
template <class E, class T> inline void t_splint(const GJArray<E>& elements, long count, float t, T* value)
{
	long low = 0;
	long high = count - 1;
	while (high - low > 1)
	{
		long middle = (high + low) / 2;
		if (elements.Entry(middle).T > t)
		{
			high = middle;
		}
		else
		{
			low = middle;
		}
	}
	float h = elements.Entry(high).T - elements.Entry(low).T;
	if (h == 0.0)
	{
		return;
	}
	float a = (elements.Entry(high).T - t) / h;
	float b = (t - elements.Entry(low).T) / h;
	*value = a * elements.Entry(low).Value + b * elements.Entry(high).Value +
	         ((a * a * a - a) * elements.Entry(low).SecondDerivative +
	          (b * b * b - b) * elements.Entry(high).SecondDerivative) *
	             (h * h * (1.0f / 6.0f));
}

template <class T> class KPSplineInterpolator
{
public:
	enum BC_TYPE
	{
		BC_TYPE_NATURAL,
		BC_TYPE_CLAMPED,
	};

	// BW1W120 inlined BW1M119 0130d580
	KPSplineInterpolator() : BCType(BC_TYPE_CLAMPED) {}

	// BW1W120 inlined BW1M119 013c1c50
	void SetSize(long size) { Elements.SetSize(size); }
	// BW1W120 inlined BW1M119 013c1dc0
	void SetSP(long index, float t, float value)
	{
		Elements.Entry(index).T = t;
		Elements.Entry(index).Value = value;
	}
	// BW1W120 inlined BW1M119 013c1cb0
	void Comp() { CompV2(); }
	// BW1W120 inlined BW1M119 01342ad0
	void CompV2()
	{
		float derivative = BCType == BC_TYPE_NATURAL ? 1e30f : 0.0f;
		t_spline(Elements, Elements.Size, derivative, derivative);
	}

	// BW1W120 inlined BW1M119 013428f0
	void EvalAtT(float t, T* value) const { t_splint(Elements, Elements.Size, t, value); }

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

	// BW1W120 inlined BW1M119 01442af0
	void CopyToArray(GJArray<float>* array) const
	{
		array->SetSize(Elements.GetSize() * 2);
		for (long i = 0; i < Elements.GetSize(); i++)
		{
			(*array)[i * 2] = Elements.Entry(i).T;
			(*array)[i * 2 + 1] = Elements.Entry(i).Value;
		}
	}

	GJArray<KPSI_Element<T> > Elements; /* 0x0 */
	BC_TYPE                   BCType;   /* 0x8 */
};
static_assert(sizeof(KPSplineInterpolator<float>) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_KP_SPLINE_INTERPOLATOR_INCLUDED_H */
