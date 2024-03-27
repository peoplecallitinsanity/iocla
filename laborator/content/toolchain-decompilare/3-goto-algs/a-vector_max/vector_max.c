// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

int main(void)
{
	int v[] = {4, 1, 2, -17, 15, 22, 6, 2};
	int max;
	int i;

	/* TODO: Implement finding the maximum value in the vector */
	max = v[0];
	i = 1;
	int n = sizeof(v) / sizeof(v[0]); 

here:
    if (i < n) goto compara; 
    goto sf;

compara:
    if (v[i] > max) max = v[i];
    i++; 
    goto here; 

sf:
    printf("Max : %d\n", max);
	(void) i;
	(void) max;
	return 0;
}
