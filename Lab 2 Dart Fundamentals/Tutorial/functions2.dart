int add1(int a, int b) {
  return a + b;
}

var add = add1;

var coolAdd = (a, b) => a + b;

void printMyName() {
  print('My name is Alex');
}

int multiply(int x, int y) {
  return x * y;
}

var mult = (x, y) => x * y;

// function of a male
var maleFunction = () => print('Protect Provide and Profess');
var femaleFunction = () => print('Nurture and Nourish');
void displayName(String x) {
  print('My name is $x');
}

// crating a function that takes a function as an argument
void myFunction(Function function) {
  function();
}

// a function that take antther function with argument
void myFunction2(Function(dynamic) theFunctionToCall, dynamic name) {
  theFunctionToCall(name);
}

void main(List<String> args) {
  // myFunction2(displayName, 'Alex');
  myFunction2((x) => print('My name is $x'), 'Alex');
  myFunction2((x) => print('My Job is $x'), 44);

  add1(1, 2);

  // int x = 10;
  // int y = x;

  // x = 99;

  // print(add1(1, 2));
  // print(add(1, 2));

  // print('Cool Add ${coolAdd(1, 2)}');

  // improvedName();
}
