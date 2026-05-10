/*
Algorithme
VARIABLES
n,i,pos,t[50] entier

DEBUT

    FAIRE
        AFFICHER("Entrer la dimension du tableaux (entre 2 et 50)")
        LIRE(n)
    FINTANQUE(n<2 OU n>50)

    POUR(i<-0; i<n; i<-i+1)
        AFFICHER("Entrer la valeur du tableaux n° "; i)
        LIRE(t[i])
    FINPOUR
    
    AFFICHER("Le tableaux est : ")
    POUR(i<-0; i<n; i<-i+1)
        AFFICHER(t[i])
    FINPOUR

    FAIRE
        AFFICHER("Entrer la position de l'element que vous voulez suprimmer")
        LIRE(pos)
    TANTQUE(pos<=0 OU pos>n)

    POUR(i<-pos; i<n ;i<-i+1)
        t[i-1] <- t[i]
    FINPOUR

    n <- n-1
    AFFICHER("Le tableaux est maintenant")
    POUR(i<-0; i<n; i<-i+1)
        AFFICHER(t[i])
    FINPOUR

FIN
*/

#include <stdio.h>
int main(){
    int n,i,pos,t[50];

    do {
        printf("Entrer la dimension du tableaux(entre 2 et 50) : ");
        scanf("%d", &n);
    } 
    while(n<2 || n>50);

    for(i=0; i<n; i++){
        printf("Entrer la valeur du tableaux n° %d : ", i);
        scanf("%d", &t[i]);
    }

    printf("Le tableaux est : \n");
    for(i=0; i<n; i++){
        printf("%d\t", t[i]);
    }
    printf("\n");

    do {
        printf("Entrer la position de l'élement que vous voulez supprimez : ");
        scanf("%d", &pos);
    }
    while(pos>n || n<=0);

    for(i=pos; i<n; i++){
        t[i-1] = t[i];
    }

    n--;

    printf("Le résultat final est : ");
    for(i=0; i<n; i++){
        printf("%d\t", t[i]);
    }
    printf("\n");
    return 0;

}