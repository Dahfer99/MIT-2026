#include<stdio.h>
int limit(int arr_limit);
void array(int arr_limit, int arr[]);
void show(int arr_limit, int arr[]);
void merge(int arr1[], int arr2[], int arr_limit1, int arr_limit2);


int limit(int arr_limit)
{
    printf("Entrer la dimension du tableaux : ");
    scanf("%d", &arr_limit);
    return arr_limit;
}

void array(int arr_limit, int arr[])
{
    for (int i=0; i<arr_limit; i++)
    {
        printf("Entrer la valeur du tableaux n° %d : ", i);
        scanf("%d", &arr[i]);
    }
}

void show(int arr_limit, int arr[])
{
    for (int i=0; i<arr_limit; i++)
    {
        printf("%d\t", *(arr + i));
    }
    printf("\n");
}

void merge(int arr1[], int arr2[], int arr_limit1, int arr_limit2)
{
    int a=0;
    int total;
    total = arr_limit1 + arr_limit2;
    for (int i=arr_limit1; i<total; i++)
    {
        arr1[i]=arr2[a];
        a++;
    }
}

int main()
{
    int n,m;
    int A[50];
    int B[50];
    n = limit(n);
    array(n,A);
    m = limit(m);
    array(m,B);
    int total = n+m;
    show(n,A);
    show(m,B);
    merge(A,B,n,m);
    show(total, A);
    return 0;
}
