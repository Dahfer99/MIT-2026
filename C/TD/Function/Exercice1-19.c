#include <stdio.h>
int input(int x);
void isprime(int x);


void isprime(int x)
{
    int prime = 1;
    for (int i=2; i<x; i++)
    {
        if (x%i==0) {
            prime = 0;
        }
    }
    if (prime==0){
        printf("%d n'est pas premier\n", x);
    }
    else
    {
        printf("%d est premier\n", x);
    }
}

int input(int x)
{
    do
    {
        printf("Entrer un entier positif (>1) : ");
        scanf("%d", &x);
    }
    while (x < 2);
    return x;
}

int main()
{
    int n = input(n);
    isprime(n);
    return 0;
}