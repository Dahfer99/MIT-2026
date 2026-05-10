/*
    Algorithme calcul du produit scalaire de deux vecteurs
    Variables
        U[2], V[2] tableaux entier
        result entier

    DEBUT
        AFFICHER("Entrer la valeur de x1")
        LIRE(U[0])
        AFFICHER("Entrer la valeur de y1")
        LIRE(U[1])
        AFFICHER("Entrer la valeur de x2")
        LIRE(V[0])
        AFFICHER("Entrer la valeur de y2")
        LIRE(V[1])

        result <- (U[0]*V[0])+(U[1]*V[1])

        AFFICHER("Le produit scalaire de U et V est ", result)
    FIN
*/
#include <stdio.h>
int main()
{
    int U[2], V[2];
    int result;
    printf("Soit deux vecteurs U et V de coodroné respectif ( x1, y1) et ( x2, y2)\n");

    printf("Entrer la valeur de x1 :\t");
    scanf("%d", &U[0]); printf("\n");

    printf("Entrer la valeur de y1 :\t");
    scanf("%d", &U[1]); printf("\n");

    printf("Entrer la valeur de x2 :\t");
    scanf("%d", &V[0]); printf("\n");

    printf("Entrer la valeur de y2 :\t");
    scanf("%d", &V[1]); printf("\n");

    printf("Calcul du produit scalaire entre U et V\n");

    result = (U[0]*V[0])+(U[1]*V[1]);

    printf("Le produit sclaire de U et V est\t %d\n", result);
}
