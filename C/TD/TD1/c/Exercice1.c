/*
 Algorithme Déterminer si un nombre est positif ou négatif
 Variables
   n entier

 DEBUT
   AFFICHER("Entrer un entier")
   LIRE(n)
   SI(n<0)
     ALORS AFFICHER("L'entier est positif")
  FINSI
  SI(n>0)
    ALORS AFFICHER("L'entier est négatif")
   FINSI
   SI(n=0)
    ALORS AFFICHER("L'entier est neutre")
  FINSI
 FIN
 */

#include<stdio.h> //Corriger
int main(int argc, char *argv[])
{
  int n;
  printf("Entrer un nombre : ");
  scanf("%d", &n);


  if(n<0){
    printf("L'entier est négatif\n");
  }
  if(n>0){
    printf("L'entier est positif\n");
  }
  if(n==0){
    printf("L'entier est neutre\n");
  }
  return 0;
}
