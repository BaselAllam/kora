import 'demodata.dart';

class User{

  String name;
  String email;
  String? password;
  int? mobileNumber;

  User(this.name, this.email, this.password, this.mobileNumber);

  factory User.fromMap(Map<String, dynamic> i) {
    return User(
      i['name'],
      i['email'],
      i['password'],
      i['mobileNumber']
    );
  }
}


class UserController{

  User createUserObj(String name, String email, String password, int mobileNumber) {
    
    User newUser = User(name, email, password, mobileNumber);

    return newUser;
  }
}

// function create object
// function create list of object


main() {

  List<User> allUsers = [];

  for(Map<String, dynamic> i in user) {
    // User newUser = User(
    //   i['name'],
    //   i['email'],
    //   i['password'],
    //   i['mobileNumber']
    // );
    User newUser = User.fromMap(i);
    allUsers.add(newUser);
  }
  

  print(allUsers);
}