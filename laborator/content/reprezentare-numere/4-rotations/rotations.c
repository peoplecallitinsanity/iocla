#include <stdio.h>

void rotate_left(unsigned int *number, int bits)
{
	/* TODO */
	(void) number;
	(void) bits;
	*number = (*number << bits) | (*number >> (32 - bits));
}


void rotate_right(unsigned int *number, int bits)
{
	/* TODO */
	(void) number;
	(void) bits;
	*number = (*number >> bits) | (*number << (32 - bits));
}

int main(void)
{
	/* TODO: Test functions */
	unsigned int num1 = 0x80000000;
    printf("(rotate_left %x, 1) = ", num1);
    rotate_left(&num1, 1);
    printf("%u\n", num1);

    unsigned int num2 = 0x00000001;
    printf("(rotate_right %x, 16) = ", num2);
    rotate_right(&num2, 16);
    printf("%u\n", num2);
	return 0;
}

// rotate_left(0x80000000, 1)   = 1
  // rotate_right(0x00000001, 16) = 65536