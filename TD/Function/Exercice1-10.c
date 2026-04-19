/*
  FONCTIONS_UTILISEES
  RECUP(x entier)
    AFFICHER("Entrer un entier")
    LIRE(x)
  FIN_RECUP

  PREMIER(x entier)
    i entier
    POUR(i<-1, i<= x, i<-i+1)
      SI(x%i==0)
        AFFICHER(i)
      FINSI 
    FINPOUR 
  FIN_PREMIER

  VARIABLES 
   n entier

  DEBUT
    n <- RECUP(n)
    PREMIER(n)
  FIN 
*/


#include<stdio.h>
int lire(int x);

int lire(int x){
  printf("Entrer un entier : ");
  scanf("%d", &x);
  return x;
}

void diviseur(int x);
void diviseur(int x){
  for(int i=1; i<=x; i++){
    if(x%i==0){
      printf("%d\t", i);
    }
  }
}

int main(){
  int n;
  n = lire(n);
  diviseur(n);

  return 0;
}
