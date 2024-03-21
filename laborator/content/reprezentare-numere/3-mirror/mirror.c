#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void mirror(char *s) {
    char *sf = s, x;
    while (*sf)
        sf++;
    sf--;

    while (s < sf) {
        x = *s;
        *s = *sf;
        *sf = x;
        s++;
        sf--;
    }
}

int main(void) {

    char test[] = "AnaAreMere";
    mirror(test);
    printf("Invers: %s\n", test);
    return 0;
}


