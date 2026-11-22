#ifndef BW1_DECOMP_GAMESPY_DARRAY_INCLUDED_H
#define BW1_DECOMP_GAMESPY_DARRAY_INCLUDED_H

#ifdef __cplusplus
extern "C"
{
#endif

	typedef struct DArrayImplementation* DArray;

	typedef int (*ArrayCompareFn)(const void* elem1, const void* elem2);
	typedef void (*ArrayElementFreeFn)(void* elem);

	DArray ArrayNew(int elemSize, int numElemsToAllocate, ArrayElementFreeFn elemFreeFn);
	void ArrayFree(DArray array);
	int ArrayLength(const DArray array);
	void* ArrayNth(DArray array, int n);
	void ArrayAppend(DArray array, const void* newElem);
	void ArrayDeleteAt(DArray array, int n);
	int ArraySearch(DArray array, const void* key, ArrayCompareFn comparator, int fromIndex, int isSorted);

#ifdef __cplusplus
}
#endif

#endif /* BW1_DECOMP_GAMESPY_DARRAY_INCLUDED_H */
