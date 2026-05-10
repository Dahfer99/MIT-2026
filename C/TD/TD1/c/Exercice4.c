/*
 *Algorithme calcul de la somme et de la mmoyenne
 *Variables
 *   x,y,s;m reel
 *
 * DEBUT
 *      AFFICHER("Entrer un note")
 *      LIRE(x)
 *      AFFICHER("Entrer un autre note")
 *      LIRE(y)
 *      s <- x+y
 *      m <- s/2
 *      AFFICHER("somme = ", s)
 *      AFFICHER("moyenne = ", m)
 * FIN
 */
#include <stdio.h> //corrigé
int main()
{
    float x,y,m,s;
    printf("Entrer un note : ");
    scanf("%f", &x);
    printf("Entrer un note : ");
    scanf("%f", &y);

    s = x+y;
    m = s/2;
    printf("Somme = %f\n", s);
    printf("Moyenne = %f\n", m);
}
