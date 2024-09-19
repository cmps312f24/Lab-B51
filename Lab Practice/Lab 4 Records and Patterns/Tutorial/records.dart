class Record {
  String name;
  int age;
  Record(this.name, this.age);
}

({String name, int age}) getRecord(Map<String, dynamic> json) {
  return (name: json['name'], age: json['age']);
}

void main(List<String> args) {
  Map<String, dynamic> json = {
    'name': 'John Doe',
    'age': 20,
    'isStudent': true,
    'marks': [90, 80, 70]
  };

  var record = getRecord(json);
  print('The name is ${record.name}');
  print('The age is ${record.age}');

  // var (a, b) = (20, 30);

  // // swapping a value
  // (a, b) = (b, a);

  // // print(a);
  // // print(b);

  // var numbers = [1, 12, 6, 7,9,0];
  // var [first, ...others] = numbers;
  // print(first);
  // print(others);

  // // sort
  // numbers.sort((a, b) => b - a);
  // // find the mid

  // var [max, nextMax, ...rest] = numbers;
  // print('Max $max');
  // print('Min $min');
  // print('Middle $middle');

  // if case
  int age = 20;
  if (age case 20) {
    print('You are 20 years old');
  } else {
    print('You are not 20 years old');
  }
}
