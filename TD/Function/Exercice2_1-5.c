#include<stdio.h>
//Prototype des fonctions de Exo 1
int getnumber(int x);
void fillarr(int limit, int arr[]);

//Prototype des fonctions de Exo 2
void getmax(int range, int arr[]);

//Prototype des fonctions de Exo 3
void erase0(int *limit, int arr[]);

//Prototype des fonctions de Exo 4
void splitarr(int limit, int arr[], int *TPOS, int *TNEG);

//Prototype des fonctions de Exo 5
void flip(int limit, int T[]);


//Fonction Exo1
int getnumber(int x)
{
    do
    {
        printf("Entrer la dimension du tableaux : ");
        scanf("%d", &x);
    }
    while (x <= 1 || x > 50);

    return x;
}

void fillarr(int limit, int arr[])
{
    int total = 0;
    for (int i=0; i<limit; i++)
    {
        printf("Entrer une valeur dans le tableaux n° %d : ", i);
        scanf("%d", &arr[i]);
        total += arr[i];
    }
    printf("Somme = %d\n",total);
}

//Fonction Exo2
void getmax(int range, int arr[])
{
    int max = arr[0];
    int pmax = 1;
    for (int i=0; i<range; i++)
    {
        if (max < arr[i]){
            max = arr[i];
            pmax = i+1;
        }
    }
    printf("Maximum = %d\nPosition = %d\n", max, pmax);
}

//Fonction Exo3
void erase0(int *limit, int arr[])
{
    int m = *limit;
    int change = 1;
    int j,k,c,i;
    while(change == 1){
        change = 0;
        i = 0;
        while(i<m-1){
            j = arr[i];
            k = arr[i+1];

            if(arr[i]==0){
                arr[i] = k;
                arr[i+1] = j;
                change = 1;
            }
            i++;

        }
        m--;
    }
    c = 0;
    for(i=0; i<*limit; i++){
        if(arr[i] == 0){
            c++;
        }
    }
    *limit -= c;

    printf("Le résultat après supression des 0\n");
    for(i=0; i<*limit; i++){
        printf("%d\t", arr[i]);
    }
    printf("\n");
}

//Fonction Exo4
void splitarr(int limit, int arr[], int *TPOS, int *TNEG)
{
    int j = 0;
    int k = 0;
    int i;
    for(i=0; i<limit; i++){
        if(arr[i]<0){
            *(TNEG+j) = arr[i];
            j++;
        }
        else {
            *(TPOS+k) = arr[i];
            k++;
        }
    }

    printf("Les tableaux des valeurs négatifs : \n");
    for(i=0; i<j; i++){
        printf("%d\t", *(TNEG+i));
    }
    printf("\n");
    printf("Les tableaux des valeurs positifs : \n");
    for(i=0; i<k; i++){
        printf("%d\t", *(TPOS+i));
    }
    printf("\n");

}

//Fonction Exo5
void flip(int limit, int T[])
{
    int A[limit], i;
    int c = 0;
    for(int i=0; i<limit; i++){
        A[i] = T[i];
    }
    for(i =limit-1; i>=0; i--){
        T[c] = A[i];
        c++;
    }

    printf("Le tableaux inverse est : \n");
    for(i=0; i<limit; i++){
        printf("%d\t", T[i]);
    }
    printf("\n");
}


//main
int main()
{
    int t[50], n, tneg[50], tpos[50];

    //exo 1
    n = getnumber(n);
    fillarr(n,t);

    //exo 2
    getmax(n,t);

    //exo 3
    erase0(&n,t);

    //exo 4
    splitarr(n, t, tpos, tneg);

    //exo 5
    flip(n,t);

    return 0;
}

