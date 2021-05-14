#include <stdio.h>
#include <stdlib.h>

/* NOTE: this is just a simple program to check on ASLR.  It will
 * print the addresses (or an approximation thereof) of the call
 * stack, the heap, and the address of a libc function.
 * Each time you run this program, you should see different output.
 * Exercise: try to estimate the entropy for each output.
 * */
int main()
{
	int x = 99; /* lives on stack */
	printf("stack ~@ %p\n",&x); /* check its address */
	int *p = malloc(sizeof(int)); /* *p lives on the heap */
	printf("heap  ~@ %p\n",p);
	int (*pputchar)(int) = putchar;
	printf("putchar@ %p\n",pputchar);
	return 0;
}
