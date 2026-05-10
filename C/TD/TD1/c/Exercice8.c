/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer n"
  LIRE n
  POUR i ALLANT_DE 1 A n
    DEBUT_POUR
    AFFICHER* i
    FIN_POUR
FIN_ALGORITHME
*/

#include<stdio.h>
int main(){
    int n, i;

    printf("Entrer n : ");
    scanf("%d", &n);

    for(i=0; i<n; i++){
        printf("%d\t", n);
    }

    return 0;
}
