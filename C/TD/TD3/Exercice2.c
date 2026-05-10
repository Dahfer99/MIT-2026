/*
Algorithme
Variables
    t[50] entier
    n, i, j, k, var, pos  entier
    
DEBUT
    FAIRE
        AFFICHER("Enter la dimension d'une taleaux (entre 2 et 49)")
        LIRE(n)
    TANTQUE(n<2 OU n>49)
    FINTANTQUE

    POUR(i<-0, i<n; i<-i+1)
        AFFICHER("Entrer la valeur du tableaux numero ", i)
        LIRE(t[i])
    FINPOUR

    AFFICHER("Entrer une valeur à inserer dans le tableaux")
    LIRE(var)
    AFFICHER("Entrer sa position")
    LIRE(pos)
    
    
    TANTQUE(pos>=n)
        AFFICHER("Entrer une position valable")
        LIRE(pos)
    FINTANQUE
    
    POUR(i<-n, i>pos, i--)
        t[i] <- t[i-1]
    FINPOUR
    
    n <- n+1

    t[pos-1] <- var

    AFFICHER("Le resultat final est")
    POUR(i<-0, i<n, i++)
        AFFICHER("t[i]")
    FINPOUR
FIN
*/
#include<stdio.h> 
int main(){
    int t[50], n,i,j,k,var,pos;

    do {
        printf("Entrer la dimension du tableau (entre 2 et 49) : ");
        scanf("%d", &n);
    }
    while(n<2 || n>49);

    for(i=0; i<n; i++){
        printf("Entrer la valeur du tableaux n° %d : ", i);
        scanf("%d", &t[i]);
    }

    printf("Le tableaux est : \n");
    for(i=0; i<n; i++){
        printf("%d\t", t[i]);
    }

    printf("\n");

    printf("Entrer une nouvelle valeur à inserer dans le tableaux et sa position : ");
    scanf("%d %d", &var, &pos);

    while(pos>n+1 || pos <= 0){
        printf("Entrer une position valable : ");
        scanf("%d", &pos);
    }

    for(i=n; i>=pos; i--){
        t[i] = t[i-1];
    }
    n++;
    t[pos-1] = var;

    printf("Le résultat final est : \n");
    for(i=0; i<n; i++){
        printf("%d\t", t[i]);
    }

    printf("\n");
    return 0;
}