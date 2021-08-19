

class Person{

  String name = 'ahmed';
  String email = 'email.com';
  int age = 20;

  test() {
    return '$name, $email, $age';
  }

  checkEmail() {
    return email.endsWith('.com');
  }
}

main() {

  Person x = Person();

  print(x.checkEmail());
}