/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  j EST_DU_TYPE NOMBRE
  k EST_DU_TYPE NOMBRE
  S EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer n"
  LIRE n
  S PREND_LA_VALEUR 0
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    k PREND_LA_VALEUR 1
    POUR j ALLANT_DE 1 A i
      DEBUT_POUR
      k PREND_LA_VALEUR k*10
      FIN_POUR
    S PREND_LA_VALEUR S+k
    FIN_POUR
  AFFICHER "Somme = "
  AFFICHER S
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){

    int n,i,j,k,s=0;

    printf("Entrer n : ");
    scanf("%d", &n);

    for(i=0; i<=n; i++)
    {
        k=1;
        // printf("%d\t", i);

        for(j=1; j<=i; j++)
        {
            // printf("%d\t", j);
            k = k* 10;
        }
        s = s + k;
    }

    printf("Somme = %d\n", s);
    return 0;
}
