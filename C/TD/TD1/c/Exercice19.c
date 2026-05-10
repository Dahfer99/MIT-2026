/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  premier EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer n"
  LIRE n
  TANT_QUE (n<=1) FAIRE
    DEBUT_TANT_QUE
    AFFICHER "Entrer une valeur supérieur ou égale à 2"
    LIRE n
    FIN_TANT_QUE
  premier PREND_LA_VALEUR 1
  POUR i ALLANT_DE 2 A n-1
    DEBUT_POUR
    SI (n%i==0) ALORS
      DEBUT_SI
      premier PREND_LA_VALEUR 0
      FIN_SI
    FIN_POUR
  SI (premier==0) ALORS
    DEBUT_SI
    AFFICHER n
    AFFICHER " n'est pas premier"
    FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER n
      AFFICHER " est premier"
      FIN_SINON
FIN_ALGORITHME
*/
#include <stdio.h>
int main(){
    int n,i,premier;

    do {
    printf("Entrer un nombre supérieur à 1 : ");
    scanf("%d", &n);
    } while (n <= 1);

    premier = 1;
    for(i=2; i<n; i++){
        if (n % i == 0){
            premier = 0;
        }
    }

    if (premier == 0){
        printf("%d n'est pas un nombre premier\n", n);
    }
    else {
        printf("%d est un nombre premier\n", n);
    }

    return 0;
}