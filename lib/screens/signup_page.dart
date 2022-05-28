import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/screens/home.dart';
import 'package:fruit_app/screens/login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = new TextEditingController();
    final TextEditingController passwordController = new TextEditingController();
    final TextEditingController passConfirmController = new TextEditingController();
    final TextEditingController nameController = new TextEditingController();
    final TextEditingController phoneController = new TextEditingController();
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        body: SafeArea(
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

              Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign Up',
                      style: TextStyle(
                        color: Colors.orangeAccent[200],
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    TextField(
                    controller: nameController,
                    style: const TextStyle(

                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      label: Text('Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                    TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(

                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      label: Text('Phone Number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                    TextField(
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
                      height: 10,
                      width: double.infinity,
                    ),
                    TextField(
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
                      height: 10,
                      width: double.infinity,
                    ),
                    TextField(
                      controller: passConfirmController,
                      obscureText: true,
                      style: const TextStyle(
                        
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        label: Text('Confirm Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    ),
                    
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    Container(
                      width: 327,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailController.text.trim(), 
                            password: passwordController.text.trim()).then((value){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                            });
                        },
                        child: const Text("Sign Up", 
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),  
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orangeAccent[200],
                          // fixedSize: Size(327, 56),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: double.infinity,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Do you have an account?  ',
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login(title: 'Login',))
                            );
                          },
                          child: Text('Login',
                            style: TextStyle(
                              color: Colors.orangeAccent[200],
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
    );
  }
}