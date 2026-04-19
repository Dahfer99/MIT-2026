

#include <stdio.h>
int main(){
  char input[50], invert[50];

  int i=0, j, count;
  do {
    printf("Entrer un mot (maximum 50 caractère) : ");
    scanf("%s", &input);
  }
  while(input[0]=='\0' || input[49]!='\0');

  while(input[i] != '\0'){
    i++;
    printf("%d\n", i);
  }
  i--;
  count = i;
  printf("c=%d\n", count);
  for (j=0; j<=count; j++) {
    invert[j]=input[i];
    printf("i=%d j=%d\n", i, j);
    printf("n=%c a=%c\n", input[i], invert[j]);
    i--;
  }

  printf("%s\n", invert);

  printf("Le mot que vous avez entrer est : %s \nLe mot en inverse est %s\n", input, invert);

  if (*input == *invert){
    printf("Le mot est palindrome\n");
  }

  else {
    printf("Le mot n'est pas palindrome\n");
  }

  return 0;
}
