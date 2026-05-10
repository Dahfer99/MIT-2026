/*

*/
#include<stdio.h>
int input(int x);
int fact(int x);
void print(int x, int y);

int input(int x)
{
  printf("Entrer un entier : ");
  scanf("%d", &x);
  return x;
}


int fact(int x)
{
   int fact = 1;
   for (int i=1; i<=x; i++)
  {
    fact *= i;
  }
  return fact;
}

void print(int x, int y)
{
  printf("%d! = %d\n", x, y);
}

int main ()
{
  int n, result;
  n = input(n);
  result = fact(n);
  print(n, result);

  return 0;
}
