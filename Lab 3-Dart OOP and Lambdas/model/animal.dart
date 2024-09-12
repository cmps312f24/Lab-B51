// 1. How to create classes in Dart?
// 2. How to create inheritance in Dart?
// 3. How to create interfaces and abstract classes in Dart?
// 4. Polymorphism in Dart?
// 5. How to create mixins in Dart?

abstract class Animal {
  // properties / attributes
  late String _name;
  late int _age;

  // constructor
  Animal(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String get name {
    return this._name;
  }

  int get age {
    return this._age;
  }

  // methods / functions
  set name(String name) {
    this._name = name;
  }

  set age(int age) {
    this._age = age;
  }

  void makeSound();

  @override
  String toString() {
    return 'Name: ${this.name}, Age: ${this.age}';
  }
}

// Inheritance

class Human extends Animal {
  late String _name;
  late int _age;
  late String _job;

  Human(String name, int age, String job) : super(name, age) {
    this.job = job;
  }

  set job(String job) {
    this._job = job;
  }

  void makeSound() {
    print('Hello');
  }

  String get job {
    return this._job;
  }

  void displayJob() {
    print('Job: ${this.job}');
  }
}

mixin Swim {
  void swim() {
    print('Swimming');
  }

  // five methods
}

mixin Fly {
  void fly() {
    print('Flying');
  }
}

class Duck extends Animal with Swim, Fly {
  late String _name;
  late int _age;

  Duck(String name, int age) : super(name, age);

  void makeSound() {
    print('Quack');
  }
}

// they cant
class Cat extends Animal {
  late String owner;

  Cat(String name, int age, String owner)
      : this.owner = owner,
        super(name, age);
        
  void makeSound() {
    print('Meow');
  }
}

class Employee extends Human {
  Employee(String name, int age, String job) : super(name, age, job);
  @override
  void displayJob() {
    // TODO: implement displayJob
  }

  @override
  void makeSound() {
    // TODO: implement makeSound
  }
}

class Lion extends Animal with Swim {
  late String _name;
  late int _age;
  late String _prideSize;

  Lion(String name, int age, String prideSize) : super(name, age) {
    this._prideSize = prideSize;
  }

  set prideSize(String prideSize) {
    this._prideSize = prideSize;
  }

  String get prideSize {
    return this._prideSize;
  }

  void makeSound() {
    print('Roar');
  }
}

void main(List<String> args) {
  Human human = Human('John', 25, 'Software Engineer');

  print(human);

  Human human1 = Human('John1', 25, 'Software Engineer');
  Human human2 = Human('John2', 25, 'Software Engineer');
  Human human3 = Human('John3', 25, 'Software Engineer');
  Lion lion1 = Lion('Simba1', 5, 'Big');
  Lion lion2 = Lion('Simba2', 5, 'Big');
  Lion lion3 = Lion('Simba3', 5, 'Big');

  List<Animal> animals = [human2, lion2, human3, lion3, human1, lion1];

  for (Animal animal in animals) {
    print(animal);
    animal.makeSound();
  }

  // factory methods

  Map<String, dynamic> json1 = {
    'name': 'John',
    'age': 25,
    'job': 'Software Engineer'
  };
  Map<String, dynamic> json2 = {
    'name': 'John',
    'age': 25,
    'job': 'Software Engineer'
  };

  print(json2['name']);
  print(json2['age']);
  print(json2['job']);
  List<Map<String, dynamic>> jsons = [json1, json2];
}

class Person {
  String name;
  int age;
  String job;

  Person(this.name, this.age, this.job);

  factory Person.fromJson(Map<String, dynamic> json) {
    return new Person('john', 20, 'SE');
  }
}
