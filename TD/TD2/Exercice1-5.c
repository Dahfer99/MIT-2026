/*
FONCTIONS_UTILISEES
VARIABLES
  n EST_DU_TYPE NOMBRE
  m EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
  j EST_DU_TYPE NOMBRE
  k EST_DU_TYPE NOMBRE
  T EST_DU_TYPE LISTE
  A EST_DU_TYPE LISTE
  TPOS EST_DU_TYPE LISTE
  TNEG EST_DU_TYPE LISTE
  c EST_DU_TYPE NOMBRE
  max EST_DU_TYPE NOMBRE
  pmax EST_DU_TYPE NOMBRE
  change EST_DU_TYPE NOMBRE
  somme EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  //Exercice 1
  AFFICHER "Entrer la dimension du tableaux"
  LIRE n
  TANT_QUE (n>50) FAIRE
    DEBUT_TANT_QUE
    AFFICHER "La dimension maximale est 50"
    LIRE n
    FIN_TANT_QUE
  somme PREND_LA_VALEUR 0
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    AFFICHER "Afficher la valeur su tableaux "
    AFFICHER* i
    LIRE T[i]
    somme PREND_LA_VALEUR somme+T[i]
    FIN_POUR
  AFFICHER "somme = "
  AFFICHER* somme
  
  //Exercice 2
  max PREND_LA_VALEUR T[0]
  pmax PREND_LA_VALEUR 1
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    SI (max<T[i]) ALORS
      DEBUT_SI
      max PREND_LA_VALEUR T[i]
      pmax PREND_LA_VALEUR i+1
      FIN_SI
    FIN_POUR
  AFFICHER "Maximum = "
  AFFICHER* max
  AFFICHER "Position du maximmum = "
  AFFICHER* pmax
  
  //Exercice 3
  change PREND_LA_VALEUR 1
  m PREND_LA_VALEUR n
  TANT_QUE (change==1) FAIRE
    DEBUT_TANT_QUE
    i PREND_LA_VALEUR 0
    change PREND_LA_VALEUR 0
    TANT_QUE (i<=n-2) FAIRE
      DEBUT_TANT_QUE
      j PREND_LA_VALEUR T[i]
      k PREND_LA_VALEUR T[i+1]
      SI (T[i]==0) ALORS
        DEBUT_SI
        T[i] PREND_LA_VALEUR k
        T[i+1] PREND_LA_VALEUR j
        change PREND_LA_VALEUR 1
        FIN_SI
      i PREND_LA_VALEUR i+1
      FIN_TANT_QUE
      m PREND_LA_VALEUR m-1
    FIN_TANT_QUE
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    SI (T[i]==0) ALORS
      DEBUT_SI
      c PREND_LA_VALEUR c+1
      FIN_SI
    FIN_POUR
  n PREND_LA_VALEUR n-c
  AFFICHER* "Le resultat après la suppression des 0"
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    AFFICHER* T[i]
    FIN_POUR
  
  //Exercice 4
  j PREND_LA_VALEUR 0
  k PREND_LA_VALEUR 0
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    SI (T[i]>0) ALORS
      DEBUT_SI
      TPOS[j] PREND_LA_VALEUR T[i]
      j PREND_LA_VALEUR j+1
      FIN_SI
      SINON
        DEBUT_SINON
        TNEG[k] PREND_LA_VALEUR T[i]
        k PREND_LA_VALEUR k+1
        FIN_SINON
    FIN_POUR
  AFFICHER* "Tableaux des nombres positifs"
  POUR i ALLANT_DE 0 A j-1
    DEBUT_POUR
    AFFICHER* TPOS[i]
    FIN_POUR
  AFFICHER* "Tableaux des nombres négatifs"
  POUR i ALLANT_DE 0 A k-1
    DEBUT_POUR
    AFFICHER* TNEG[i]
    FIN_POUR
  
  //Exercice 5
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    A[i] PREND_LA_VALEUR T[i]
    FIN_POUR
  c PREND_LA_VALEUR 0
  i PREND_LA_VALEUR n-1
  TANT_QUE (i!=0) FAIRE
    DEBUT_TANT_QUE
    T[c] PREND_LA_VALEUR A[i]
    c PREND_LA_VALEUR c+1
    i PREND_LA_VALEUR i-1
    FIN_TANT_QUE
  AFFICHER* "Le tableaux inverses"
  POUR i ALLANT_DE 0 A n-1
    DEBUT_POUR
    AFFICHER* T[i]
    FIN_POUR
FIN_ALGORITHME
*/
#include<stdio.h>
int main(){
    int n,m,i,j,k,T[50],A[50],TPOS[50],TNEG[50],c,max,pmax,change,somme;


    // Exercice 1: Somme des valeurs du tableaux
    do{
        printf("Enter la dimension du tableaux (entre 2 et 50) : ");
        scanf("%d", &n);
    }
    while (n <= 1 && n > 50);

    somme = 0;

    for(i=0; i<n; i++){
        printf("Entrer une valeur dans le tableaux n° %d : ", i);
        scanf("%d", &T[i]);
        somme += T[i];
    }

    printf("Somme = %d\n", somme);
    printf("Exercice 1 return value 0\n");
    printf("\n");

    //Exercice 2: Determiner le maximum et sa position
    max = T[0];
    pmax = 1;

    for(i=0; i<n; i++){
        if(max < T[i]){
            max = T[i];
            pmax = i+1;
        }
    }

    printf("Maximum = %d\nPosition = %d\n", max, pmax);
    printf("Exercice 2 return value 0\n");
    printf("\n");

    //Exercice 3 : Suppression des 0
    m =n;
    change = 1;
    while(change == 1){
        change = 0;
        i = 0;
        while(i<m-1){
            j = T[i];
            k = T[i+1];
            
            if(T[i]==0){
                T[i] = k;
                T[i+1] = j;
                change = 1;
            }
            i++;
            
        }
        m--;
    }
    c = 0;
     for(i=0; i<n; i++){
        if(T[i] == 0){
            c++;
        }
     }
     n -= c;

     printf("Le résultat après supression des 0\n");
     for(i=0; i<n; i++){
        printf("%d\t", T[i]);
     }
     printf("\n");
     printf("Exercice 3 return value 0\n");
     printf("\n");

     //Exercice 4: Trier les valeurs positifs et négatifs
     j = 0;
     k = 0;
     for(i=0; i<n; i++){
        if(T[i]<0){
            TNEG[j] = T[i];
            j++;
        }
        else {
            TPOS[k] = T[i];
            k++;
        }
     }

     printf("Les tableaux des valeurs négatifs : \n");
     for(i=0; i<j; i++){
        printf("%d\t", TNEG[i]);
     }
     printf("\n");
     printf("Les tableaux des valeurs positifs : \n");
     for(i=0; i<k; i++){
        printf("%d\t", TPOS[i]);
     }
     printf("\n");
     printf("Exercice 4 return value 0\n");
     printf("\n");

     //Exercice 5 : inverser le tableaux
     for(i=0; i<n; i++){
        A[i] = T[i];
     }
     c = 0;
     for(i =n-1; i>=0; i--){
        T[c] = A[i];
        c++;
     }

     for(i=0; i<n; i++){
         printf("%d\t", T[i]);
     }
     printf("\n");

     printf("Exercice 5 return value 0\n");
     printf("\n");
     return 0;
}