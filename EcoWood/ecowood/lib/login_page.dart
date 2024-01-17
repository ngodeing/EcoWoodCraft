import 'package:ecowood/components/Text_field.dart';
import 'package:ecowood/components/button.dart';
import 'package:ecowood/components/button_google.dart';
import 'package:ecowood/signUp_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  void signUserIn() {}
  void forgotPassword() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 45,
                left: 40,
              ),
              child: Image.asset(
                '../image/Daun.png',
                height: 20.0,
                width: 20.0,
              ),
            ),
            Container(
                child: SizedBox(
              height: 40,
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Mitr',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            )),
            Container(
                margin: EdgeInsets.only(top: 0),
                child: SizedBox(
                  height: 40,
                  child: Text(
                    'Welcome to EcoWoodCraft',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                )),
            Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 65.0, vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        )
                      ]),
                ),
                MyTextField(
                  // controller: usernameController,
                  hintText: 'Email',
                  obsecureText: false,
                  image: '../image/Email.png',
                  showVisibilityIcon: false,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 65.0, vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            height: 0,
                          ),
                        )
                      ]),
                ),
                MyTextField(
                  // controller: usernameController,
                  hintText: 'Password',
                  obsecureText: true,
                  image: '../image/Password.png',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 65.0, vertical: 10),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                      onTap: () {
                        forgotPassword();
                      },
                      child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 0,
                      ),
                    )
                    ),
                    
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(nameAuth: 'Sign In',),
                const SizedBox(
                  height: 15,
                ),
                ButtonGoogle(onTap: signUserIn, nameAuth: 'Sign In With Google',),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Not A Member?',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage())
                      );
                    },
                    child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontSize: 13,
                      fontFamily: 'Mitr',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                  ),
                  
                ]),
                const SizedBox(
                  height: 20,
                ),
              ],
            ))
          ],
        ))));
  }
}
