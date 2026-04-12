/*
FONCTIONS_UTILISEES
VARIABLES
  i EST_DU_TYPE NOMBRE
  j EST_DU_TYPE NOMBRE
  k EST_DU_TYPE NOMBRE
  b EST_DU_TYPE NOMBRE
  change EST_DU_TYPE NOMBRE
  t EST_DU_TYPE LISTE
  n EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  AFFICHER "Entrer le nombre d'entier à entrer"
  LIRE n
  TANT_QUE (n>100) FAIRE
    DEBUT_TANT_QUE
    AFFICHER "Entrer un nombre inférieur à 100"
    LIRE n
    FIN_TANT_QUE
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    AFFICHER "Entrer la valeur du tableaux "
    AFFICHER* i
    LIRE t[i]
    FIN_POUR
  change PREND_LA_VALEUR 1
  b PREND_LA_VALEUR 0
  TANT_QUE (change!=0 ET b != n+1) FAIRE
    DEBUT_TANT_QUE
    change PREND_LA_VALEUR 0
    i PREND_LA_VALEUR 0
    TANT_QUE (i<(n-1)) FAIRE
      DEBUT_TANT_QUE
      j PREND_LA_VALEUR t[i]
      k PREND_LA_VALEUR t[i+1]
      SI (j%2==1) ALORS
        DEBUT_SI
        change PREND_LA_VALEUR 1
        t[i] PREND_LA_VALEUR k
        t[i+1] PREND_LA_VALEUR j
        FIN_SI
      i PREND_LA_VALEUR i+1
      FIN_TANT_QUE
    b PREND_LA_VALEUR b+1
    FIN_TANT_QUE
  AFFICHER* "Le resultat final est"
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    AFFICHER* t[i]
    FIN_POUR
FIN_ALGORITHME
*/
#include<stdio.h>
int main() {
    int i,j,k,b,n,change,t[100];
    
    do 
    {
        printf("Entrer le nombre d'entier à entrer (Entre 2 et 100): ");
        scanf("%d", &n);
    }
    while (n < 2 || n > 100);

    for(i=0; i<n; i++){
        printf("Entrer la valeur du tableaux n° %d : ", i);
        scanf("%d", &t[i]);
    }

    change = 1;
    b = 0;

    while(change != 0 && b != n+1){
        change = 0;
        i = 0;
        while(i<n-1){
            j = t[i];
            k = t[i+1];

            if(j%2==1){
                change = 1;
                t[i] = k;
                t[i+1] = j;
            }
            i++;
        }
        b++;
    }

    printf("Le résultat est : \n");
    for(i=0; i<n; i++){
        printf("%d\t", t[i]);
    }

    return 0;
}