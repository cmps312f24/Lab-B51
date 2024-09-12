// variable declaration and data types in dart

void main(List<String> args) {
  int age = 20;
  String name = 'Alex';
  double height = 5.9;

  print("Name is " + name + " and age is " + age.toString());
  print("Name is $name and age is $age and height is $height");

  // const and final

  const pi = 3.14; //error
  final area = pi * 12 * 12;

  String? gender = null;

  print(gender);

  var x = 10;
  // x = "a string value";

  var z;

  z = 10;

  z = "string value";

  print(z);

  dynamic y = 20;
  y = "anything you want again";
  print(y);

  // List

  List<int> numbers = [1, 2, 43, 45, 6, 6];
  List<dynamic> names = ['Alex', 'John', 'Doe', 7777];

  print(numbers);
  print(names);

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  // // Map <type Of Key , type of value> {
  //   key : value
  Map<String, dynamic> person = {
    "name": "Ali",
    "age": 20,
    "gender": 'Male',
    "height": 5.9
  };

  print(person);
  print(person['name']);

  // Set

  Set<int> setNumbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  Set<dynamic> dynamicSet = {1, 2, 4, "Hello", "World"};

  print(setNumbers);

  for (int number in setNumbers) {
    print(number);
  }
}
