/*
 * Algorithme Afficher si le prosuit d'un nombre est positif ou négatif
 * Variables
 *  a,b réel
 *
 *  DEBUT
 *      AFFICHER("Entrer a")
 *      LIRE(a)
 *      AFFICHER("Entrer b")
 *      LIRE(b)
 *      SI(a<0 ET b<0)
 *          ALORS AFFICHER("Le produit est positif")
 *          SINON
 *              SI(a<0 ou b<0)
 *              ALORS AFFICHER("Le produit est négatif")
 *              SINON AFFICHER("Le produit est positif")
 *      FINSI
 *  FIN
 */
#include <stdio.h> //Et si a ou b = 0??
int main()
{
    float a,b;

    printf("Entrer a : ");
    scanf("%f" ,&a);
    printf("Entrer b : ");
    scanf("%f" ,&b);

    if (a<0 && b<0)
    {
        printf("Le produit est positif\n");
    }
    else
    {
        if (a<0 || b<0)
        {
            printf("Le produit est négatif\n");
        }
        else
        {
            printf("Le produit est positif\n");
        }
    }
    return 0;
}
