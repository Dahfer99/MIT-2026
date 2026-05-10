/*
 * Algorithme Echane des valeurs des variables
 * Variables
 *  a,b,c,x reel
 *
 *  DEBUT
 *      AFFICHER("Entrer a")
 *      LIRE(a)
 *      AFFICHER("Entrer b")
 *      LIRE(b)
 *      x <- a
 *      a <- b
 *      b <- x
 *      AFFICHER("La valeur de a est maintenant ", a, "et la valeur de b est maintenant ", b,)
 *
 *      AFFICHER("Enter la valeur de c")
 *      LIRE(c)
 *      x <- a
 *      a <- b
 *      b <- c
 *      c <- x
 *      AFFICHER("La valeur de a est maintenant ", a, "La valeur de b est maintenant", b, "La valeur de c est maintenant ", c)
 *  FIN
 */
#include<stdio.h> //tsy affichena ny resultat!
int main()
{
    float a,b,c,x;

    printf("Entrer a : ");
    scanf("%f", &a);
    printf("Entrer b : ");
    scanf("%f", &b);

    x = a; a = b; b = x;

    printf("La valeur de a est maintenant a = %f, et la valeur de b = %f\n", a, b);

    printf("Entrer la valeur de c : ");
    scanf("%f", &c);
    x=a; a=b; b=c; c=x;
    printf("La valeur de a est maintenant a = %f, et la valeur de b = %f, et la valeur  de c est c = %f\n", a, b, c);

    return 0;
}
