/*
FONCTIONS_UTILISEES
VARIABLES
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  c EST_DU_TYPE NOMBRE
  max EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer a"
  LIRE a
  AFFICHER "Entrer b"
  LIRE b
  AFFICHER "Entrer c"
  LIRE c
  SI (a>b) ALORS
    DEBUT_SI
    SI (a>c) ALORS
      DEBUT_SI
      max PREND_LA_VALEUR a
      FIN_SI
      SINON
        DEBUT_SINON
        max PREND_LA_VALEUR c
        FIN_SINON
    FIN_SI
    SINON
      DEBUT_SINON
      SI (b>c) ALORS
        DEBUT_SI
        max PREND_LA_VALEUR b
        FIN_SI
        SINON
          DEBUT_SINON
          max PREND_LA_VALEUR c
          FIN_SINON
      FIN_SINON
  AFFICHER "Le maximum est "
  AFFICHER max
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){
    float a, b, c, max;

    printf("Entrer la valeur de a : ");
    scanf("%f", &a);
    printf("Entrer la valeur de b : ");
    scanf("%f", &b);
    printf("Entrer la valeur de c : ");
    scanf("%f", &c);

    if(a>b){
        if(a>c){
            max = a;
        }
        else {
            max = c;
        }
    }

    else {
        if(b>c){
            max = b;
        }
        else {
            max = c;
        }
    }

    printf("Le maximum est %f", max);
    return 0;
}
