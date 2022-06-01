import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/constant.dart';
import 'package:fruit_app/screens/home.dart';

import 'package:fruit_app/screens/signup_page.dart';

void main(List<String> args) {
  runApp( Login(title: 'Login',));
}

class Login extends StatelessWidget {

  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final _auth = FirebaseAuth.instance;
  
  // final User? _user = FirebaseAuth.instance.currentUser;
  Login({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: Form(
          key: _key,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.only(top: 0),
                    child: const Image(
                      height: 205,
                      width: 185,
                        image:
                            AssetImage("lib/assets/launch_image.png")),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Login',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                        width: double.infinity,
                      ),
                      TextFormField(
                        validator: validateEmail,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
        
                        ),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          label: Text('Email'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                      ),
                      ),
                      const SizedBox(
                        height: 30,
                        width: double.infinity,
                      ),
                      TextFormField(
                        validator: validatePassword,
                        controller: passwordController,
                        obscureText: true,
                        style: const TextStyle(
                          
                        ),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          label: Text('Password'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      ),
                      
                      const SizedBox(
                        height: 60,
                        width: double.infinity,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if(_key.currentState!.validate()){
                            await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: emailController.text.trim(), 
                            password: passwordController.text.trim()).then((value) => {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()))
                          });
                          }
                        },
                        child: const Text("Login", 
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),  
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          fixedSize: const Size(327, 56),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?  ',
                            style: TextStyle(
                              fontSize: 15
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => const SignUp())
                              );
                            },
                            child: Text('Sign Up',
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
String? validateEmail(String? formEmail){
  if(formEmail == null || formEmail.isEmpty) return "Email is required, please enter your email address !";

  String pattern = r'\w+@\w+\.\w+';
  RegExp regEx = RegExp(pattern);
  if(!regEx.hasMatch(formEmail)) return "Invalid email address format !";
  
  return null;
  
}
String? validatePassword(String? formPassword){
  if(formPassword == null || formPassword.isEmpty) return "Password is required, please enter your password !";
  String pattern = r'^(?=.*?[a-z])(?=.*?[0-9]).{8,}$';

  RegExp regEx = RegExp(pattern);
  if(!regEx.hasMatch(formPassword)) return "Password must be at least 8 characters and include number !";

  return null;
}


