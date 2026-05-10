/*
 *
 */
#include <stdio.h>
int input(int x);
int expo(int x);
void print(int x,int result);

int input(int x)
{
    do
    {
        printf("Entrer un entier positif : ");
        scanf("%d", &x);
    }
    while (x < 0);
    return x;
}

int expo(int x)
{
    int sum = 1;
    for (int i=1; i<=x; i++)
    {
        int tmp = 1;
        for (int j=1; j<=i; j++)
        {
            tmp *= 10;
        }
        sum += tmp;
    }
    return sum;
}

void print(int x,int result)
{
    printf("La somme de 1 à 10^%d = %d\n", x,result);
}

int main()
{
    int n = input(n);
    int sum = expo(n) ;
    print(n, sum);
    return 0;
}