void main(List<String> args) {
  int age = 20;

  if (age > 18)
    print("You are an adult");
  else if (age == 18)
    print("You are 18 years teenager");
  else
    print("You are a minor");

  // Ternary operator
  String whatToDisplay = age > 18 ? "You are an adult" : "You are a minor";
  print(whatToDisplay);

  // Switch case

  int grade = 98;

  switch (grade) {
    case >= 90 && < 100:
      print("A");
    case >= 80 && < 90:
      print("B");
    case >= 70 && < 80:
      print("C");
    default:
      print("You failed");
  }
  String whatIsTheLetterGrade = switch (grade) {
    >= 90 && < 100 => "A",
    >= 80 && < 90 => "B",
    >= 70 && < 80 => "C",
    _ => "You failed"
  };

  print("The switch that returns a value is: ");
  print(whatIsTheLetterGrade);
}
