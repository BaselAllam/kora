import 'package:doctor/theme/sharedTextStyleAndColor.dart';
import 'package:doctor/widgets/buttonwidget.dart';
import 'package:doctor/widgets/fields.dart';
import 'package:doctor/widgets/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Login', style: primaryTextStyle,),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2.7,
                  width: MediaQuery.of(context).size.width/1.5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage('https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-135.jpg?size=338&ext=jpg'),
                      fit: BoxFit.fill
                    )
                  ),
                ),
              ],
            ),
            Text(
              ' Welcome Back!',
              style: TextStyle(color: mainColor, fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              ' Sign in to continue', style: primaryTextStyle,
            ),
            field('Email Address', Icons.email, TextInputType.emailAddress, emailController),
            field(
              'Password',
              Icons.lock,
              TextInputType.text,
              passwordController,
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
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forget Password', style: primaryTextStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ButtonWidget(
                    'Signin',
                    Size(MediaQuery.of(context).size.width/1.3, 40.0),
                    mainColor,
                    () {
                      if(emailController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Email Field Reuqired'));
                      }
                    }
                  ),
                ],
              ),
            ),
             Align(
               alignment: Alignment.bottomCenter,
               child: InkWell(
                 onTap: () {},
                 child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Dont Have an account?  ', style: primaryTextStyle,),
                    Text('Sign up', style: TextStyle(color: mainColor, fontSize: 20.0, fontWeight: FontWeight.bold),)
                  ],
                           ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}