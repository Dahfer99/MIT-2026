/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER* "Entrer n"
  LIRE n
  AFFICHER* "Les nombres paires de 1 à n sont "
  POUR i ALLANT_DE 1 A n
    DEBUT_POUR
    SI (i%2=0) ALORS
      DEBUT_SI
      AFFICHER* i
      FIN_SI
    FIN_POUR
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){
    int n, i;
    printf("Entrer n : ");
    scanf("%d", &n);
    for(i=0; i<=n; i++){
        if(i%2==0){
            printf("%d\t", i);
        }
    }
    return 0;
}
