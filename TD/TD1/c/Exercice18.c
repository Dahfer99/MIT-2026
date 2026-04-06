/*
FONCTIONS_UTILISEES
VARIABLES
  x EST_DU_TYPE NOMBRE
  y EST_DU_TYPE NOMBRE
  a EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  r EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer a"
  LIRE x
  AFFICHER "Entrer b"
  LIRE y
  SI (x > y) ALORS
    DEBUT_SI
    a PREND_LA_VALEUR x
    b PREND_LA_VALEUR y
    FIN_SI
    SINON
      DEBUT_SINON
      a PREND_LA_VALEUR y
      b PREND_LA_VALEUR x
      FIN_SINON
  r PREND_LA_VALEUR a%b
  SI (r==0) ALORS
    DEBUT_SI
    AFFICHER "Le pgcd est "
    AFFICHER b
    FIN_SI
    SINON
      DEBUT_SINON
      TANT_QUE (r!=0) FAIRE
        DEBUT_TANT_QUE
        a PREND_LA_VALEUR b
        b PREND_LA_VALEUR r
        r PREND_LA_VALEUR a%b
        FIN_TANT_QUE
      AFFICHER "Le pgcd est "
      AFFICHER b
      FIN_SINON
FIN_ALGORITHME
*/
#include <stdio.h>
int main(){
    int x,y,a,b,r;

    printf("Entrer deux entiers : ");
    scanf("%d %d", &x ,&y);

    if (x == y){
        printf("Les deux entiers sont ideniques, leurs PGCD est eux même\n");
    }
    else if (x>b){
        a = x; 
        b = y;
    }
    else {
        a = y;
        b = x;
    }

    r = a % b;
    
    if(r == 0){
        printf("Le PGCD de %d et %d est %d\n", x,y,b);
    } 
    else {
        while(r != 0){
            a = b;
            b = r;
            r = a % b;
        }
        printf("Le PGCD de %d et %d est %d\n", x,y,b);
    }

    return 0;
}