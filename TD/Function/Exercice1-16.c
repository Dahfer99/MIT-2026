/*
*
 */
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