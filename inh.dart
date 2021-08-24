
// Diamond Problem

class Person extends Inter with Emp, Driver, Sales{

  String? name;
  int? age;
  static int counter = 0;

  Person(this.name, this.age) {
    counter++;
  }

  String personData() {
    return '$name, $age';
  }
}

class Inter{}

mixin Emp on Inter{

  num salary = 200;

}

mixin Driver on Inter{

  String vechile = '';
}


mixin Sales on Inter{
  num salary = 300;
}

main() {

  Person p = Person('name', 20);

  print(p.salary);
}


// Research StatelessWidget & StatefullWidget (dont say this static and other dynmaic)

// Doctor
// Appointment
// Availabilty 
// User

// user book doctor throw it availability and put all these data in appointment class