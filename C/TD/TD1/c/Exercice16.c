/*
    FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  j EST_DU_TYPE NOMBRE
  fact EST_DU_TYPE NOMBRE
  somme EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE n
  SI (n<1) ALORS
    DEBUT_SI
    AFFICHER "Le nombre doit être supérieur ou égal à 1"
    FIN_SI
    SINON
      DEBUT_SINON
      somme PREND_LA_VALEUR 0
      POUR i ALLANT_DE 1 A n
        DEBUT_POUR
        fact PREND_LA_VALEUR 1
        POUR j ALLANT_DE 1 A i
          DEBUT_POUR
          fact PREND_LA_VALEUR fact*j
          FIN_POUR
        somme PREND_LA_VALEUR somme+fact
        FIN_POUR
      AFFICHER "La somme des factorielles de 1 à "
      AFFICHER n
      AFFICHER " est "
      AFFICHER somme
      FIN_SINON
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){
    int n,i,j,f,s=0;

    do {
        printf("Entrer un entier supérieur ou égale à 1 : ");
        scanf("%d", &n);
    } 
    while(n <= 0);

    for(i=1; i<=n; i++){
        f=1;
        for(j=1; j<=i; j++){
            f *= j;
        }
        s += f;

    }

    printf("La somme des factorielles de 1 à %d est %d\n", n,s);
    return 0;
}