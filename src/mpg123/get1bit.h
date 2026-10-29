

#ifdef I386_ASSEM
static inline int get1bit(void) {
	extern int bitindex;
	extern unsigned char *wordpointer;
	int ret;

	asm("\n\t"
		"movl	%1,%%ecx\n\t"
		"movzbl	(%%ecx),%%eax\n\t"
		"movl	%2,%%ecx\n\t"
		"incl	%%ecx\n\t"
		"rolb	%%cl,%%al\n\t"
		"andb	$1,%%al\n\t"
		"movl	%%ecx,%2\n\t"
		"andl	$7,%2\n\t"
		"sarl	$3,%%ecx\n\t"
		"addl	%%ecx,%1\n" 
		: "=a" (ret) 
		: "m" (wordpointer) , "m" (bitindex) 
		: "eax" , "ecx" , "memory" );
	return ret;
}
#endif



