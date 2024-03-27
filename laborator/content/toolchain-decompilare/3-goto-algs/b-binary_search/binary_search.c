// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

int main(void)
{
	int v[] =  {1, 2, 15, 51, 53, 66, 202, 7000};
	int dest = v[2]; 
	int start = 0;
	int end = sizeof(v) / sizeof(int) - 1;

	/* TODO: Implement binary search */
	(void) dest;
	(void) start;
	(void) end;
    int mid;

cauta:
    mid = start + (end - start) / 2; 
    if (v[mid] == dest) goto gasit;
    if (start >= end) goto not_gasit;
    
    if (v[mid] < dest) {
        start = mid + 1;
    } else {
        end = mid - 1;
    }
    
    goto cauta; 

gasit:
    printf("Nr %d este pe pozitia %d.\n", dest, mid);
    return 0;

not_gasit:
    printf("Nr %d nu este in vector.\n", dest);
    return 0;
}
