/*
FONCTIONS_UTILISEES
VARIABLES
  n1 EST_DU_TYPE NOMBRE
  n2 EST_DU_TYPE NOMBRE
  S EST_DU_TYPE NOMBRE
  M EST_DU_TYPE NOMBRE
  c1 EST_DU_TYPE NOMBRE
  c2 EST_DU_TYPE NOMBRE
  ct EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer la note 1"
  LIRE n1
  TANT_QUE (n1>20) FAIRE
    DEBUT_TANT_QUE
    AFFICHER "Entrer une valeur inférieur à 20"
    LIRE n1
    FIN_TANT_QUE
  AFFICHER "Entrer la note 2"
  LIRE n2
  TANT_QUE (n2>20) FAIRE
    DEBUT_TANT_QUE
    AFFICHER "Entrer une valeur inférieur à 20"
    LIRE n2
    FIN_TANT_QUE
  AFFICHER "Entrer coefficient de la note 1"
  LIRE c1
  AFFICHER "Entrer la coefficient de la note 2"
  LIRE c2
  n1 PREND_LA_VALEUR n1*c1
  n2 PREND_LA_VALEUR n2*c2
  ct PREND_LA_VALEUR c1+c2
  S PREND_LA_VALEUR n1+n2
  M PREND_LA_VALEUR S/ct
  AFFICHER* "Moyenne = "
  AFFICHER M
FIN_ALGORITHME

*/
#include<stdio.h>
int main(){

    float n1, n2 , t, m;
    int c1, c2, tc;

    printf("Entrer la note 1 : ");
    scanf("%f", &n1);

    while (n1 < 0 || n1 > 20) {
        printf("Entrer une valeur valide : ");
        scanf("%f", &n1);
    }

    printf("Entrer la note 2 : ");
    scanf("%f", &n2);

    while (n2 < 0 || n2 > 20) {
        printf("Entrer une valeur valide : ");
        scanf("%f", &n2);
    }

    printf("Entrer la coefficient de la note 1 : ");
    scanf("%d", &c1);
    printf("Entrer la coefficient de la note 2 : ");
    scanf("%d", &c2);

    n1 = n1 * c1; n2 = n2 * c2;
    tc = c1 + c2;
    t = n1 + n2;
    m = t/tc;

    printf("La moyenne est de %.2f", m);
    return 0;
}
