import 'package:doctor/screens/homepage.dart';
import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/fields.dart';
import 'package:doctor/widgets/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

TextEditingController emailController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

GlobalKey<FormState> emailKey = GlobalKey<FormState>();
GlobalKey<FormState> userNameKey = GlobalKey<FormState>();
GlobalKey<FormState> phoneNumberKey = GlobalKey<FormState>();
GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
GlobalKey<FormState> confirmPasswordKey = GlobalKey<FormState>();

GlobalKey<FormState> formKey = GlobalKey<FormState>();

bool isSecure = true;

String gender = '';

bool isAccespted = false;

DateTime birthDate = DateTime(1990);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Sing up', style: primaryTextStyle,),
        iconTheme: IconThemeData(color: primaryColor, size: 20.0),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[100]
                      // image: DecorationImage(
                      //   image: NetworkImage('https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?size=338&ext=jpg'),
                      //   fit: BoxFit.fill
                      // )
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add_a_photo),
                      color: primaryColor,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              field('Email Address', Icons.email, TextInputType.emailAddress, emailController, emailKey),
              field('User Name', Icons.account_circle, TextInputType.text, userNameController, userNameKey),
              field('Phone Number', Icons.phone, TextInputType.number, phoneNumberController, phoneNumberKey),
              subItem(
                'Gender ( $gender )',
                PopupMenuButton(
                  child: Icon(Icons.arrow_downward, color: secondaryColor, size: 20.0),
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem(
                        child: Text('Male'),
                        value: 'Male',
                      ),
                      PopupMenuItem(
                        child: Text('FeMale'),
                        value: 'FeMale',
                      ),
                    ];
                  },
                  onSelected: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
              ),
              field(
                'Password',
                Icons.lock,
                TextInputType.text,
                passwordController,
                passwordKey,
                secure: isSecure,
                suffix: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  color: secondaryColor,
                  iconSize: 20.0,
                  onPressed: () {
                    setState(() {
                      isSecure = !isSecure;
                    });
                  },
                )
              ),
              field(
                'Confirm Password',
                Icons.lock,
                TextInputType.text,
                confirmPasswordController,
                confirmPasswordKey,
                secure: isSecure,
                suffix: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  color: secondaryColor,
                  iconSize: 20.0,
                  onPressed: () {
                    setState(() {
                      isSecure = !isSecure;
                    });
                  },
                )
              ),
              subItem(
                'Accept Terms & Conditions',
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: mainColor,
                  value: isAccespted,
                  onChanged: (value) {
                    setState(() {
                      isAccespted = value!;
                    });
                  },
                )
              ),
              subItem(
                'Birth Date ( ${birthDate.toString().substring(0, 10)} )',
                IconButton(
                  icon: Icon(Icons.date_range),
                  color: secondaryColor,
                  iconSize: 20.0,
                  onPressed: () async {
                    DateTime? selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1950),
                      initialDate: DateTime(1990),
                      lastDate: DateTime(2010),
                    );
                    setState(() {
                      birthDate = selectedDate!;
                    });
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ButtonWidget(
                      'Signup',
                      Size(MediaQuery.of(context).size.width/1.3, 40.0),
                      mainColor,
                      () {
                        if(!formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Some Fields Reuqired'));
                        }else if(passwordController.text != confirmPasswordController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Password Not Matched'));
                        }else if(gender.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Select your Gender'));
                        }else{
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {return HomePage();}));
                        }
                      }
                    ),
                  ],
                ),
              ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: InkWell(
                   onTap: () {
                     Navigator.pop(context);
                   },
                   child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Have an account?  ', style: primaryTextStyle,),
                      Text('Sign in', style: TextStyle(color: mainColor, fontSize: 20.0, fontWeight: FontWeight.bold),)
                    ],
                  ),
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
  ListTile subItem(String title, Widget trailing) {
    return ListTile(
      title: Text(title, style: primaryTextStyle,),
      trailing: trailing
    );
  }
}