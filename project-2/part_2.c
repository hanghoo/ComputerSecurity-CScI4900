/* Uncontrolled Format Strings

Note that this time, a stack buffer overrun is no longer possible, 
as fgets will not read more than n characters.

*/

#include <stdio.h>

int main() { 
    const int n = 128; 
    int y = 0xdeadc0de;
    char buffer[n];
    
    fgets(buffer, n, stdin); 
    printf(buffer); 

    printf("y = %d\n", y);

    return 0; 
} 