#include <stdio.h>

int bis(int x, int m);
int bic(int x, int m);

// Compute x | y using only calls to function bis and bic.
int bool_or(int x, int y) {
  int result = bis(x, y);
  return result;
}

// Compute x ^ y using only calls to function bis and bic.
int bool_xor(int x, int y) {
  int result = bis(bic(x, y), bic(y, x));
  return result;
}

int bis(int x, int m) {
  return x | m;
}

int bic(int x, int m) {
  return x & (~m);
}

int main() {
  printf("%d\n", bool_or(10, 10));
  printf("%d\n", bool_xor(10, 4));
}
