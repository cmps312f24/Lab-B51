class Car {
  late String name;
  late String age;
  late String gender;

  // Car(this.name, this.age);
  // Car(String name, int age) {
  //   this.name = name;
  //   this.age = age.toString();
  // }

  Car(this.name, this.age);

  // named constructor

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

void main(List<String> args) {
  Car car = new Car('Toyota', '2020');
  print(car.name);
  print(car.age);
}
