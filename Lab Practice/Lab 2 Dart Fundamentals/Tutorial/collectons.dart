void display(int x) {
  print(x);
}

int add(int accumulation, int currentValue) {
  print('accumulation : $accumulation and currentValue : $currentValue');
  return accumulation + currentValue;
}

void main(List<String> args) {
  List<int> numbers = [1, 2, 43, 45, 6, 6];
  // numbers.forEach((x) => print(x));
  List<int> transformed = numbers.map((x) => x + 10).toList();

  // int sum2 = numbers.reduce(add);

  // int initialValue = 99;

  int sum3 = numbers.fold(0, add);

  int max = numbers.reduce((a, b) => a > b ? a : b);
  print('max number is $max');

  // print('The sum is $sum2');

  // the main built it methods of collections are

  // forEach
  // map
  // where
  // any
  // every

  print(transformed);
}
