	.file	"call-stack.cpp"
# GNU C++98 (GCC) version 10.2.1 20201203 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 10.2.1 20201203, GMP version 6.2.0, MPFR version 4.1.0, MPC version 1.1.0, isl version isl-0.21-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE call-stack.cpp -mtune=generic
# -march=x86-64 -auxbase-strip call-stack.s -O0 -Wall -Wformat=2
# -pedantic-errors -std=c++98 -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -fexceptions -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -fmath-errno -fmerge-debug-strings -fpeephole -fplt
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstack-protector-strong
# -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	"Checking password..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# call-stack.cpp:8: 	printf("Checking password...\n");
	leaq	.LC0(%rip), %rdi	#,
	call	puts@PLT	#
# call-stack.cpp:9: 	pwdcheck();
	call	_Z8pwdcheckv	#
# call-stack.cpp:10: 	return 0;
	movl	$0, %eax	#, _4
# call-stack.cpp:11: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC1:
	.string	"enter password: "
.LC2:
	.string	"%s"
.LC3:
	.string	"lololol"
.LC4:
	.string	"yaaay"
.LC5:
	.string	"Authenticated!"
.LC6:
	.string	"Wrong password, sorry!"
	.text
	.globl	_Z8pwdcheckv
	.type	_Z8pwdcheckv, @function
_Z8pwdcheckv:
.LFB1:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# call-stack.cpp:14: void pwdcheck() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	movq	%rax, -8(%rbp)	# tmp87, D.2314
	xorl	%eax, %eax	# tmp87
# call-stack.cpp:15: 	int authenticated = 0;
	movl	$0, -24(%rbp)	#, authenticated
# call-stack.cpp:18: 	printf("enter password: ");
	leaq	.LC1(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# call-stack.cpp:19: 	scanf("%s",pwd); /* the C version of cin >> pwd. */
	leaq	-18(%rbp), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	leaq	.LC2(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	scanf@PLT	#
# call-stack.cpp:20: 	if (strcmp(pwd,"lololol") == 0) {
	leaq	-18(%rbp), %rax	#, tmp85
	leaq	.LC3(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp85,
	call	strcmp@PLT	#
# call-stack.cpp:20: 	if (strcmp(pwd,"lololol") == 0) {
	testl	%eax, %eax	# _1
	jne	.L4	#,
# call-stack.cpp:21: 		authenticated = 1;
	movl	$1, -24(%rbp)	#, authenticated
	jmp	.L5	#
.L4:
# call-stack.cpp:22: 	} else if (strcmp(pwd,"yaaay") == 0) {
	leaq	-18(%rbp), %rax	#, tmp86
	leaq	.LC4(%rip), %rsi	#,
	movq	%rax, %rdi	# tmp86,
	call	strcmp@PLT	#
# call-stack.cpp:22: 	} else if (strcmp(pwd,"yaaay") == 0) {
	testl	%eax, %eax	# _2
	jne	.L5	#,
# call-stack.cpp:23: 		authenticated = 1;
	movl	$1, -24(%rbp)	#, authenticated
.L5:
# call-stack.cpp:26: 	if (authenticated) {
	cmpl	$0, -24(%rbp)	#, authenticated
	je	.L6	#,
# call-stack.cpp:27: 		printf("Authenticated!\n");
	leaq	.LC5(%rip), %rdi	#,
	call	puts@PLT	#
# call-stack.cpp:32: }
	jmp	.L9	#
.L6:
# call-stack.cpp:30: 		printf("Wrong password, sorry!\n");
	leaq	.LC6(%rip), %rdi	#,
	call	puts@PLT	#
.L9:
# call-stack.cpp:32: }
	nop	
	movq	-8(%rbp), %rax	# D.2314, tmp88
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	_Z8pwdcheckv, .-_Z8pwdcheckv
	.ident	"GCC: (GNU) 10.2.1 20201203"
	.section	.note.GNU-stack,"",@progbits
