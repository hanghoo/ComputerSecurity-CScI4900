#include <stdio.h>
#include <stdlib.h>

int g(int y)
{
	return y+3;
}

int f(int x)
{
	int z;
	z = g(x);
	return x+z;
}

int main()
{
	int a = f(5);
	printf("%i\n",a);
	return 0;
}

int lonely()
{
	printf("nobody calls me...\n");
	return 0;
}
