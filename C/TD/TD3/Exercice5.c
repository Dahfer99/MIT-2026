/*
 Algorithme
 Variable
 n,i,val,sum,result Entrier 
 mid reel 
 t[50] tableaux entier 

 DEBUT 
  FAIRE
    AFFICHER("Entrer la dimnesion du tableaux entre 2 et 50")
    LIRE(n)
  TANTQUE(n<2 OU n>50)

  POUR(i<-0, i<n, i<-i+1)
    AFFICHER("Entrer la valeur numero ", i, "du tableaux")
    LIRE(t[i])
    sum <- sum + t[i]
  FINPOUR

  mid <- sum / n 
  val <- ARRONDI(mid)

  AFFICHER("Les elements du tableaux sont")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER(t[i])
    SI(t[i]==val)
      result <- t[i]
    FINSI 
  FINPOUR

  AFFICHER("La moyenne est de ", mid)
  AFFICHER("L'élements le plus proche de la moyenne est ", result)

    
 FIN 


*/
#include <stdio.h>
#include <math.h>
int main(){
  int t[50], result;
  int n,i,val;
  float mid, sum=0;

  do {
    printf("Entrer la dimension du tableaux (entre 2 et 50) : ");
    scanf("%d", &n);
  } while (n<2 || n>50);

  for (i=0; i<n; i++) {
    printf("Entrer la valeur n° %d du tableaux : ", i);
    scanf("%d", &t[i]);
    sum += t[i];
  }

  mid = sum / n;
  val = round(mid);
  
  printf("Les élements du tableaux sont :\n");
  for (i=0; i<n; i++) {
    printf("%d\t", t[i]);
    if (t[i]==val) {
      result = t[i];
    }
  }
  printf("\n");

  printf("La moyenne est %.2f\n", mid);
  printf("L'élement la plus proche du moyenne est %d \n", result);

  return 0;
}
