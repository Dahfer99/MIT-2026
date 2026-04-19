/*

*/
#include<stdio.h>
int input(int x);
int sum(int x);
void print(int x, int y);

int input(int x)
{
    printf("Entrer un entier : ");
    scanf("%d", &x);
    return x;
}


int sum(int x)
{
    int sum = 0;
    for (int i=0; i<=x; i++)
    {
        sum += i;
    }
    return sum;
}

void print(int x, int y)
{
    printf("Somme de 1 à %d = %d\n", x, y);
}

int main ()
{
    int n, result;
    n = input(n);
    result = sum(n);
    print(n, result);

    return 0;
}
