#include <stdio.h>
int main() {
  printf("TEMPERATURE CONVERTOR\n");
  printf("---------------------\n");
  printf("1) Fahrenheit => Celcius\n");
  printf("2) Celcius => Fahrenheit\n");
  printf(">");

  int c;
  float fahrenheit, celcius;
  c = getchar();
  switch (c) {
  case '1':
    printf("Enter the Fahrenheit degree: ");
    scanf("%f", &fahrenheit);
    celcius = (fahrenheit - 32) * 5 / 9;
    printf("%.2f Celcius\n", celcius);
    break;
  case '2':
    printf("Enter the degree in celcius: ");
    scanf("%f", &celcius);
    fahrenheit = ((celcius * 9/5) + 32);
    printf("%.2f Fahrenheit\n", fahrenheit);
    break;
  default:
    printf("Invalid Input!!!");
    break;
  }
    return 0;
}
