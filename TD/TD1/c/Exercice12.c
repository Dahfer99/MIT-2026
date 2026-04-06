/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  S EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer n"
  LIRE n
  S PREND_LA_VALEUR 0
  POUR i ALLANT_DE 1 A n
    DEBUT_POUR
    S PREND_LA_VALEUR S+i
    FIN_POUR
  AFFICHER "La somme de 1 à n est "
  AFFICHER S
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){
    int n,i,s=0;
    printf("Entrer n : ");
    scanf("%d", &n);
    for(i=1; i<=n; i++){
        s += i;
    }
    printf("La somme de 1 à %d est %d \n", n, s);
    return 0;
}
