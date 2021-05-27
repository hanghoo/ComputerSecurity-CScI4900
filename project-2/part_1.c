#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

 
int  f() {
    char buffer[16];
    printf("Please input 16 chars\n");
    scanf("%s",buffer);
    return 0;
}

int lonely()
{
	char *name[2];
	name[0] = "/bin/sh";
	name[1] = NULL;
	execve(name[0], name, NULL);
	return 0;
}
 
int main(int argc, char** argv) {
    f();
    printf("Exiting...\n");
    exit(0);
}
