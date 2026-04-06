/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  fact EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE n
  SI (n<0) ALORS
    DEBUT_SI
    AFFICHER "Erreur, veuillez entrer un nombre positif"
    FIN_SI
    SINON
      DEBUT_SINON
      fact PREND_LA_VALEUR 1
      POUR i ALLANT_DE 1 A n
        DEBUT_POUR
        fact PREND_LA_VALEUR fact*i
        FIN_POUR
      AFFICHER "n! = "
      AFFICHER fact
      FIN_SINON
  
  
FIN_ALGORITHME

*/

#include<stdio.h>
int main(){
    int n,i,f=1;

    printf("Entrer n : ");
    scanf("%d", &n);
    for(i=0; i<=n; i++){
        f *= i;
    }

    printf("Le factoriel de %d est %d\n", n, f);
    return 0;
}

