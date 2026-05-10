#include <stdio.h>

void print(int x,int y, int result);
int input(int x);
int pgcd(int x, int y);

int pgcd(int x, int y)
{
    int result = 1;
    for (int i=1; (i<=x && i<=y); i++)
    {
        if (x%i==0 && y%i==0)
        {
            result = i;
        }
    }
    return result;
}

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


void print(int x,int y, int result)
{
    printf("Le pgcd de %d et %d est %d\n", x,y,result);
}

int main()
{
    int a = input(a),
    b = input(b),
    result = pgcd(a,b);
    print(a,b,result);
    return 0;
}
