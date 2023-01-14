#include<stdio.h>
#define Mul(x,y) ++x*++y
int main()
{
	int a = 1;
	int b = 2;
	int c = 3;
	printf("%d ", Mul(a + b, b + c));
	return 0;
}
