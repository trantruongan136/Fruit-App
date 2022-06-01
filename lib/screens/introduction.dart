import 'package:flutter/material.dart';
import 'package:fruit_app/constant.dart';
import 'login_page.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orangeAccent[200]
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 469,
                color: primaryColor,
                child: Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: const Image(
                      image:
                          AssetImage("lib/assets/basket_of_fruit.png")),
                ),
              ),
              const SizedBox(
                height: 70,
                width: double.infinity,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Get The Freshest Fruit Salad Combo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    const Text(
                      "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 60,
                      width: double.infinity,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login(title: 'Login',))
                        );
                      },
                      child: const Text("Let’s Continue"),
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        fixedSize: const Size(327, 56),
                      ),
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
