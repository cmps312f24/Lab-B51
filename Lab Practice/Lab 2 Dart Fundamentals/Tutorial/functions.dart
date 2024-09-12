int add(int a, int b) {
  return a + b;
}

// b  is optional argument
// a is positional[required] argument
int add2(int a, [int b = 10]) {
  return a + b;
}

// a and b are named arguments
int add3({int a = 90, required int b}) {
  return a + b;
}

void main(List<String> args) {
  int result = add(1, 2);
  print(result);

  int result2 = add2(1);
  print(result2);

  result2 = add2(1, 5);
  print(result2);

  int result3 = add3(a: 1, b: 2);
  result3 = add3(b: 1, a: 2);
  result3 = add3(b: 1);
  print(result3);
}
