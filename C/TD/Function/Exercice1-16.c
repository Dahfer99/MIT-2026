/*
*
 
#include <stdio.h>
int input(int x);
int sum(int x);
void print(int x,int sum);

int input(int x)
{
    do
    {
        printf("Entrer un entier positif : ");
        scanf("%d", &x);
    }
    while (x < 1);
    return x;
}

int sum(int x)
{
    int sum = 0;
    for (int i=1; i<=x; i++)
    {
        int tmp = 1;
        for (int j=1; j<=i; j++)
        {
            tmp *= j;
        }
        sum += tmp;
    }
    return sum;
}

void print(int x,int sum)
{
    printf("La somme de 1 à %d! = %d\n", x,sum);
}

int main()
{
    int n = input(n);
    int result = sum(n) ;
    print(n, result);
    return 0;
}

*/

#include<stdio.h>
int input(int x);
int fact(int x);
int sum(int x);
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

int sum(int x)
{
    int sum = 0;
    for (int i=0; i<=x; i++)
    {
        sum += fact(i);
    }
    return sum;
}

int main ()
{
  int n, result;
  n = input(n);
  result = sum(n);
  return 0;
}