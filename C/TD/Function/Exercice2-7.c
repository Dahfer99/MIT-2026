#include<stdio.h>
void getcordinate(int *x);
void scal(int *x, int *y);


void getcordinate(int *x)
{
    printf("Entrer les coordonnés du vecteur : ");
    scanf("%d %d", *x, *(x+1));
}

void scal(int *x, int *y)
{
    int result = ((*x)*(*y)+(*(x+1)*(*(y+1))));
    printf("Produit scalaire = %d",result);
}

int main()
{
    int u[2], v[2];
    getcordinate(&u);
    getcordinate(&v);
    scal(&u, &v);
}