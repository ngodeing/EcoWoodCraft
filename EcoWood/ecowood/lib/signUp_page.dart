import 'package:ecowood/components/Text_field.dart';
import 'package:ecowood/components/button.dart' as MyButton;
import 'package:ecowood/components/button_google.dart';
import 'package:ecowood/login_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();
  void signUserIn() {}
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
                'image/Daun.png',
                height: 20.0,
                width: 20.0,
              ),
            ),
            Container(
                child: SizedBox(
              height: 40,
              child: Text(
                'SIGN UP',
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
                          'Name',
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
                  hintText: 'Name',
                  obsecureText: false,
                  image: 'image/Name.png',
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
                  obsecureText: true,
                  image: 'image/Email.png',
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
                  image: 'image/Password.png',
                  
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 65.0, vertical: 10),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      'Forgot Password?',
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
                const SizedBox(
                  height: 20,
                ),
                MyButton.Button(nameAuth: 'Sign Up',),
                const SizedBox(
                  height: 15,
                ),
                ButtonGoogle(onTap: signUserIn, nameAuth: 'Sign Up With Google',),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Already A Member?',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                      );
                    },
                    child: Text(
                    'Login',
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
