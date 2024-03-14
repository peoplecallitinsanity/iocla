#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int my_strlen(const char *str)
{
	/* TODO */

	/**
	 * The cast to (void) is used to avoid a compiler warning. Remove the line
	 * below to find out what the warning is.
	 *
	 * Remove this cast when implementing the function.
	 */
	(void) str;
    int l = 0;
    while (*str++) {
        l++;
    }
    return l;

	return -1;
}

void equality_check(const char *str)
{
	/* TODO */
	(void) str;
	
    int l = my_strlen(str);
    printf("Lungime = %d\n", l);
    
    for (int i = 0; i < l; i++) {
        const char *adresa = str + ((i + (1 << i)) % l);
        printf("Adresa %c: %p\n", *(str + i), adresa);
    }
}

int main(void)
{
	/* TODO: Test functions */
	const char *s1 = "aac";
    printf("%s: \n", s1);
    equality_check(s1);

    const char *s2 = "ababababacccbacbacbacbacbabc";
    printf("%s:\n", s2);
    equality_check(s2);
	return 0;
}

