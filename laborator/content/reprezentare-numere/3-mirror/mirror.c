#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void mirror(char *s)
{
	/* TODO */
	(void) s;
    char *sf = s;
    while (*sf) {
        sf++;
    }
    sf--;
    
    while (s < sf) {
        char aux = *s;
        *s = *sf;
        *sf = aux;
        
        s++;
        sf--;
    }
}
int main(void)
{
	/* TODO: Test function */
	char str1[] = "AnaAreMere";
    printf("mirror('%s') = ", str1);
    mirror(str1);
    printf("%s\n", str1);

    char str2[] = "asdfghjl";
    printf("mirror('%s') = ", str2);
    mirror(str2);
    printf("%s\n", str2);

    char str3[] = "qwerty";
    printf("mirror('%s') = ", str3);
    mirror(str3);
    printf("%s\n", str3);
	return 0;
}

