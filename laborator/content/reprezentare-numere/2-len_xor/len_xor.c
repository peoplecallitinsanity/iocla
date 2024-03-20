#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int my_strlen(const char *str) {
    int lungime = 0;
    while (*(str + lungime) != '\0') {
        lungime++;
    }
    return lungime;
}

void equality_check(const char *str)
{	int putere = 1;
	/* adresa fiecărui caracter de pe poziția i care este egal cu caracterul de poziția i + 2^i
	 (dacă i + 2^i depășește dimensiunea șirului de caractere se va folosi operația modulo) */
	for (int i = 0; *(str + i) != '\0'; i++){
		putere = (i + 1 << i) % my_strlen(str);
		if (!((int)(*(str + i)) ^ (int)(*(str + putere)))){
			//printf("%c egal cu %c la pozitiile %d %d",*(str + i), *(str + i + putere ), i, i+putere );
			printf("Adresa lui %c: %p\n", *(str + i), (void*)(str + i));
			printf("Adresa lui %c: %p\n", *(str + i), (void*)(str+putere));
		}
		
	}

}

int main(void)
{
	/* TODO: Test functions */
    const char *testString = "ababababacccbacbacbacbacbabc";
    int lungime = my_strlen(testString);
    printf("Lungimea sirului este: %d\n", lungime);
	equality_check(testString);
	return 0;
}

#include <stdio.h>




