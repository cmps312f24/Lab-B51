extension on List<int> {
  int sum() {
    return this.reduce((a, b) => a + b);
  }
}

extension on List {
  void printNumbers() {
    for (var number in this) {
      print(number);
    }
  }
}

extension on String {
  String firstChar() {
    return this[0];
  }
}

void main(List<String> args) {
  List<String> names = ['Jack', 'Jill', 'John'];
  List<int> numbers = [1, 2, 3, 4, 5];

  names.printNumbers();

  String name = 'Jack';

  print(name.firstChar());

  print(numbers.sum());
  numbers.printNumbers();
}
