.globl	getbits
	.type    getbits,@function
getbits:
	cmpl	$0,4(%esp)
	jne	.L1
	xorl	%eax,%eax
	ret

.L1:
	movl	wordpointer,%ecx
	movzbl	(%ecx),%eax
	shll	$16,%eax
	movb	1(%ecx),%ah
	movb	2(%ecx),%al
	movl	bitindex,%ecx
	shll	$8,%eax
	shll	%cl,%eax
	movl 	4(%esp),%ecx
	addl	%ecx,bitindex
	negl	%ecx
	addl	$32,%ecx
	shrl	%cl,%eax
	movl	bitindex,%ecx
	sarl	$3,%ecx
	addl	%ecx,wordpointer
	andl	$7,bitindex
	ret



.globl	getbits_fast
	.type    getbits_fast,@function
getbits_fast:
	movl	wordpointer,%ecx
	movzbl	1(%ecx),%eax
	movb	(%ecx),%ah
	movl	bitindex,%ecx
	shlw	%cl,%ax
	movl 	4(%esp),%ecx
	addl	%ecx,bitindex
	negl	%ecx
	addl	$16,%ecx
	shrl	%cl,%eax
	movl	bitindex,%ecx
	sarl	$3,%ecx
	addl	%ecx,wordpointer
	andl	$7,bitindex
	ret



.globl	get1bit
	.type    get1bit,@function
get1bit:
	movl	wordpointer,%ecx
	movzbl	(%ecx),%eax
	movl	bitindex,%ecx
	incl	%ecx
	rolb	%cl,%al
	andb	$1,%al
	movl	%ecx,bitindex
	andl	$7,bitindex
	sarl	$3,%ecx
	addl	%ecx,wordpointer
	ret



