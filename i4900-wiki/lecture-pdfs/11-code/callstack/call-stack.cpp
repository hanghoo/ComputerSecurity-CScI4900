#include <cstdio>
#include <string.h> /* for strcmp */

void pwdcheck();

int main()
{
	printf("Checking password...\n");
	pwdcheck();
	return 0;
}

/* check stdin against a list of (in this case hard-coded) passwords */
void pwdcheck() {
	int authenticated = 0;
	char pwd[10]; /* storage for password to check */
	/* read password from standard input into the array */
	printf("enter password: ");
	scanf("%s",pwd); /* the C version of cin >> pwd. */
	if (strcmp(pwd,"lololol") == 0) {
		authenticated = 1;
	} else if (strcmp(pwd,"yaaay") == 0) {
		authenticated = 1;
	} // else if (...) { maybe check other passwords... }
	/* check if input matched anything in the list */
	if (authenticated) {
		printf("Authenticated!\n");
		/* and maybe allow access to some resource... */
	} else {
		printf("Wrong password, sorry!\n");
	}
}

// vim:foldlevel=2
