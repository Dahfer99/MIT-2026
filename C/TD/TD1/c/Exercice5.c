/*
 * Algoritme Résolution d'une équation du second degré
 * Variables
 * a,b,c,delta,s1,s2 reel
 *
 * DEBUT
 *      AFFICHER("L'équation est de la forme ax^2+bx+c=0")
 *      AFFICHER("Entrer a")
 *      LIRE(a)
 *      AFFICHER("Entrer b")
 *      LIRE(b)
 *      AFFICHER("Entrer c")
 *      LIRE(c)
 *
 *      delta <- b*b-4*a*c
 *      SI(delta<0)
 *          ALORS
 *          delta <- valeurabsolue(delta)
 *          delta <- racinecarre(delta)
 *          AFFICHER("L'équation admet deux solution imaginaire")
 *          AFFICHER("x1 = (-b-delta)/ (2*a)")
 *          AFFICHER("x2 = (-b+delta)/ (2*a)")
 *          SINON
 *              delta <- racinecarre(delta)
 *              SI(delta>0)
 *                  ALORS
 *                  AFFCIHER("L'équation admet 2 solutions reel")
 *                  s1 <- (-b-delta)/(2*a)
 *                  s2 <- (-b+delta)/(2*a)
 *                  AFFICHER("x1 = ", s1, "x2 = "; s2)
 *                  SINON
 *                  AFFICHER("L'équation admet une racine double")
 *                  s1 <- -b / (2*a)
 *                  AFFICHER("x1=x2= ", s1)
 *              FINSI
 *      FINSI
 * FIN
 */
#include<stdio.h>
#include<math.h>
int main(){

    float a, b, c, x1, x2, delta, A;


    printf("L'équation du second degré est de la forme ax^2+bx+c=0\n");
    printf("Entrer la valeur de a : ");
    scanf("%f", &a);

    /* if (isnan(a))
    {
        printf("Entrer des valeurs réels");
    } */

    printf("Entrer la valeur de b : ");
    scanf("%f", &b);
    printf("Entrer la valeur de c : ");
    scanf("%f", &c);

    delta = ((b*b) - 4*a*c);
    A = 2 * a;

    if (a==0 && b==0 && c==0)
    {
        printf("Impossible\n");
    }

    else if (a==0 && b==0)
    {
        printf("Ce n'est pas une équation\n");
        printf("x = %.2f\n", c);
    }

    else if (a == 0)
    {
        printf("L'équation est du premier degré\n");
        x1 = -c/b;
        printf("La solution est alors x = %.2f\n", x1);
    }

    else if (delta < 0)
    {
        printf("L'équation %fx^2 + %fx +%f = 0 n'admet aucun de solution réel\n", a, b, c);
        delta = fabs(delta);
        delta = sqrt(delta);
        printf("L'équation admet colors deux solutions imaginaires\n");
        printf("x1 = (- %.2f - %.2f i) / (%.2f)\n", b, delta, A);
        printf("x2 = (- %.2f + %.2f i) / (%.2f)\n", b, delta, A);
    }

    else
    {
        delta = sqrt(delta);

        if (delta == 0)
        {
            x1 = (-b/A);

            printf ("L'équation adment une racine double x1 = x2 = %.2f", x1);
        }

        else if (delta > 0)
        {
            x1 = (-b+delta)/(A);
            x2 = (-b-delta)/(A);
            printf("L'équation admet deux solutions distincts x1 et x2\n x1 = %.2f\n x2 = %.2f\n", x1, x2);
        }
    }
    return (0);
}
