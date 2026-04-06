/*
 *Algorithme ajout des élément du tableaux A vers B*
 Variables:
  i,n,m,a entier
  A[50], B[50] tableaux entier
  
  DEBUT
    AFFICHER  ("Entrer la dimension du tableaux A")
    LIRE  (n)
    AFFICHER  ("Entrer la dimension du tableaux B")
    LIRE  (m)

    A[n+m]
    B[m]

    POUR(i<-0, i<n, i<-i+1)
      ALORS 
      AFFICHER("Entrer la valeur ", i, " du tableaux A")
      LIRE(A[i])
    FINPOUR

    POUR(i<-0, i<m, i<-i+1)
      ALORS 
      AFFICHER("Entrer la valeur ", i, " du tableaux B")
      LIRE(B[i])
    FINPOUR

  AFFICHER("Les éléments du tableaux A sont : ")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER(A[i])
  FINPOUR

  AFFICHER("Les éléments du tableaux B sont : ")
  POUR(i<-0, i<m, i<-i+1)
    AFFICHER(B[i])
  FINPOUR

  i<-n
  a<-0

  TANTQUE(i!=(n+m) ET m != a)
    A[i] = B[a]
    i<-i+1
    a<-a+1
  FINTANTQUE

  AFFICHER("Le résultat final est ")
  POUR(i<-0, i<(n+m), i<-i+1)
    AFFICHER(A[i])
  FINPOUR
  FIN 
*/

#include <stdio.h>
int main()
{
    int n,i,m;
    //Asking table size
    printf("Entrer la dimension du tableaux A:\t");
    scanf("%d", &n);
    printf("Entrer la dimension du tableaux B:\t");
    scanf("%d", &m);

    int A[n+m];
    int B[m];

    //Asking value of table A
    for (i = 0; i < n; i++)
    {
        printf("Entrer la valeur %d du tableaux A :\t", i);
        scanf("%d", &A[i]);
    }

    //Asking value of table B
    for (i = 0; i < m; i++)
    {
        printf("Entrer la valeur %d du tableaux B :\t", i);
        scanf("%d", &B[i]);
    }

    //Affichage des résultats
    printf("Les éléments du tableaux A sont : \n");
    for (i = 0; i < n; i++)
    {
        printf("%d\n", A[i]);
    }

    printf("\n"); //spacing

    printf("Les éléments du tableaux B sont : \n");
    for (i = 0; i < m; i++)
    {
        printf("%d\n", B[i]);
    }

    //merging table
    i = n;
    int a = 0;

    while (i!=(n+m) && m != a)
    {
        A[i] = B[a];
        a++;
        i++;
    }

    //result
    printf("Le résultat final est \n");
    for (i = 0; i < (n+m); i++)
    {
        printf("%d\t", A[i]);
    }

    printf("\n");
    return 0;
}
