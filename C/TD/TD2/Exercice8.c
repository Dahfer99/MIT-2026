/*
    Algorithme Trouver le maximum et le minimum avec leur position
    Variables
        n, i, max, pmax, min, pmin entier
        t[] tableaux entier

    DEBUT
        AFFICHER("Entrer la dimension du tableaux")
        LIRE(n)

        POUR(i<-0, i<n, i<-i+1)
            AFFICHER("Entrer la valeur du tableaux ", i)
            LIRE(t[i])
        FINPOUR

        max<-t[0]
        pmax<-1
        POUR(i<-0, i<n, i<-i+1)
            SI (max<t[i])
                ALORS
            max<-t[i]
            pmax<-i+1
            FINSI
        FINPOUR

        min<-t[n-1]
        pmin<-n
        POUR(i<-n-1, i<=0, i<-i-1)
            SI (min>t[i])
                ALORS
                min<-t[i]
                pmin<-i+1
        FINSI
        FINPOUR

        AFFICHER("Le mamximum est ", max, "et sa position est ", pmax)
        AFFICHER("Le minimum est ", min, "et sa position est ", pmin)
    FIN
*/
#include <stdio.h>
int main ()
{
    int n, i;
    printf("Entrer la dimension du tableaux : ");
    scanf("%d", &n);
    int t[n];

    //fill the table
    for (i = 0; i < n; i++)
    {
        printf("Entrer la valeur n° %d du tableaux : ", i+1);
        scanf("%d", &t[i]);
    }

    printf("\n");

    //Finding max
    int max = t[0];
    int pmax = 0;
    for (i = 0; i < n; i++)
    {
        if (max < t[i])
        {
            max = t[i];
            pmax = (i+1);
        }
    }
    printf("Le maximum est %d et sa position est %d\n", max, pmax);



    //Finding min
    int min = t[(n-1)];
    int pmin = n;
    for (i = (n-1); i >= 0; i--)
    {
        if (min > t[i])
        {
            min = t[i];
            pmin = (i+1);
        }
    }
    printf("Le minimum est %d et sa position est %d\n", min, pmin);
}
