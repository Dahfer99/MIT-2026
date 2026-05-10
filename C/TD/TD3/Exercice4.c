/*
 Algorithme
 t1[50], t2[100] tableaux entier
 n,m,i,j,k,t change entier

 DEBUT
  FAIRE
    AFFICHER("Entrer la dimension du tableau 1 (entre 2 et 50)")
    LIRE(n)
  TANTQUE(n<2 OU n>50)
  
  FAIRE
    AFFICHER("Entrer la dimension du tableau 2 (entre 2 et 100)")
    LIRE(m)
  TANTQUE(m<2 OU m>50)

  AFFICHER("Remplisser le tableaux 1")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER("Entrer la valeur du tableaux n° ", i)
    LIRE(t1[i])
  FINPOUR
  
  AFFICHER("Le tableaux 1 est ")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER(t1[i])
  FINPOUR
   
  AFFICHER("Remplisser le tableaux 2")
  POUR(i<-0, i<m, i<-i+1)
    AFFICHER("Entrer la valeur du tableaux n° ", i)
    LIRE(t2[i])
  FINPOUR
  
  AFFICHER("Le tableaux 2 est ")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER(t2[i])
  FINPOUR

  POUR(j<-0, j<m, j<-i+1)
    POUR(k<-0, k<n, k<-k+1)
      SI(t2[j]==t1[k])
        t1[k] <- 0
      FINSI
    FINPOUR
  FINPOUR

  change <- 1
  TANTQUE(change==1)
    
    change <- 0
    POUR(i<-0, i<n-1, i<-i+1)
      SI(t1[i]==0)
        t <- t1[i]
        t1[i] <- t1[i+1]
        t1[i+1] <- t
        change <- 1
        n <- n-1
      FINSI
    FINPOUR
  FINTANTQUE

  AFFICHER("Le résultat final est ")
  POUR(i<-0, i<n, i<-i+1)
    AFFICHER(t1[i])
  FINPOUR
 FIN 
*/
#include<stdio.h>
int main(int argc, char *argv[])
{
  int t,n,m,i,j,k,change;
  int t1[50],t2[100];

  do {
    printf("Entrer la dimension du tableaux 1 (Entrer 2 et 50): ");
    scanf("%d", &n);
  } while (n<2|| n>50);

  for (i=0; i<n; i++) {
    printf("Entrer la valeur n° %d du tableaux 1 : ", i);
    scanf("%d", &t1[i]);
  }
  
  do {
    printf("Entrer la dimension du tableaux 2 (Entre 2 et 100) : ");
    scanf("%d", &m);
  } while (m<2|| m>100);
  
  for (i=0; i<m; i++) {
    printf("Entrer la valeur n° %d du tableaux 2 : ", i);
    scanf("%d", &t2[i]);
  }

  printf("\n");

  printf("Les valeurs contenues dans le tableaux 1 sont :\n");
  for (i=0; i<n; i++) {
    printf("%d\t", t1[i]);
  }
  printf("\n");
  
  printf("Les valeurs contenues dans le tableaux 2 sont :\n");
  for (i=0; i<m; i++) {
    printf("%d\t", t2[i]);
  }
  printf("\n");

  change = 1;
  while(change==1){
    change = 0;
    for(j=0; j<m; j++){
      for(k=0; k<n-1; k++){
        if (t2[j]==t1[k]) {
          t = t1[k];
          t1[k] = t1[k+1];
          t1[k+1] = t;
          change = 1;
        }
      }
    }
    n--;
  }

  printf("Le résultat final dans le tableaux 1 est :\n");
  for (i=0; i<n; i++) {
    printf("%d\t", t1[i]);
  }

  return 0;
}
