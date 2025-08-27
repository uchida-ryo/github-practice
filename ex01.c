#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
  if (argc != 3) {
    printf("Usage: %s <num1> <num2>\n", argv[0]);
    return 1;
  }

  int a = atoi(argv[1]);
  int b = atoi(argv[2]);

  if (b == 0) {
    printf("Error: Division by zero is not allowed.\n");
    return 1;
  }

  int q = a / b;

  printf("quotient is %d\n", q);
}
