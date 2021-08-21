

class Person{

  String? name;
  String? email;
  int? age;

  Person(this.name, emails, this.age) {
    this.email = validateEmail(emails);
  } // Default Constructor

  String validateEmail(String x) {
    return '$x.com';
  }
}

main() {

  Person newPerson = Person('ali', 'ali', 20);

  print(newPerson.email);
}