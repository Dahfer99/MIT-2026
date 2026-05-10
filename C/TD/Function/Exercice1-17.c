/*

*/
#include<stdio.h>
int input(int x);
float sum(int x);
void print(int x, float y);

int input(int x)
{
    do
    {
        printf("Entrer un entier : ");
        scanf("%d", &x);
    } while (x < 1);
    return x;
}


float sum(int x)
{
    float sum = 0;
    for (int i=1; i<=x; i++)
    {
        float tmp = 1.0f;
        for (int j=1; j<=i; j++)
        {
            tmp *= (1.0f /j);
        }
        sum += tmp;
    }
    return sum;
}

void print(int x, float y)
{
    printf("Somme de 1 à (1/%d)! = %.2f\n", x, y);
}

int main ()
{
    int n = input(n);
    float result = sum(n);
    print(n, result);
    return 0;
}