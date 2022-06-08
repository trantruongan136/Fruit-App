import 'package:flutter/material.dart';
import 'package:fruit_app/constant.dart';
import 'package:fruit_app/screens/detail.dart';
import 'package:fruit_app/screens/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
          drawer: const Navbar(),
          appBar: AppBar(
            elevation: 0.0,
            foregroundColor: Colors.orangeAccent[200],
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.orangeAccent[200],
                  ))
            ],
            backgroundColor: Colors.white,
          ),
          body: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Hello Tony!\nWhat fruit salad combo do you want to day?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 23,
                          fontFamily: "HellixBold",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                        width: 335,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Search for fruit salad combos",
                              hintStyle: const TextStyle(color: Colors.grey),
                              prefixIcon: const Icon(Icons.search)),
                        ),
                      ),
                      Container(
                          width: 48,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("lib/assets/filter.png"),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: const Text(
                          "Recommended Combo",
                          style: TextStyle(
                              fontSize: 23,
                              color: darkBlueColor,
                              fontFamily: "HellixBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                            onTap: () {
                              print('hello');
                            },
                            child: const Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "HellixBold",
                                color: primaryColor,
                              ),
                            )),
                        margin: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                      )
                    ],
                  ),
                  Container(
                    width: 400,
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detail()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20.0)),
                            width: 165,
                            height: 195,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.asset(
                                    "lib/assets/Honey-Lime-Peach-Fruit-Salad.png",
                                    width: 200,
                                    height: 200,
                                  ),
                                  top: -30,
                                  left: -15,
                                ),
                                const Positioned(
                                  child: Text(
                                    "Honey lime combo",
                                    style: TextStyle(
                                        fontFamily: "HellixBold",
                                        color: darkBlueColor,
                                        fontSize: 17),
                                  ),
                                  top: 135,
                                  left: 10,
                                ),
                                Positioned(
                                  child: IconButton(
                                    onPressed: () {
                                      print('object');
                                    },
                                    icon: Icon(Icons.favorite_border),
                                    color: primaryColor,
                                  ),
                                  top: 0,
                                  left: 115,
                                ),
                                const Positioned(
                                  child: Text(
                                    "\$ 2.000",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  ),
                                  top: 160,
                                  left: 10,
                                ),
                                Positioned(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    color: primaryColor,
                                  ),
                                  top: 145,
                                  left: 120,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detail()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: greyColor,
                                borderRadius: BorderRadius.circular(20.0)),
                            width: 165,
                            height: 195,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.asset(
                                    "lib/assets/Glowing-Berry-Fruit-Salad.png",
                                    width: 200,
                                    height: 200,
                                  ),
                                  top: -30,
                                  left: -15,
                                ),
                                const Positioned(
                                  child: Text(
                                    "Berry mango combo",
                                    style: TextStyle(
                                        fontFamily: "HellixBold",
                                        color: darkBlueColor,
                                        fontSize: 17),
                                  ),
                                  top: 135,
                                  left: 10,
                                ),
                                Positioned(
                                  child: IconButton(
                                    onPressed: () {
                                      print('object');
                                    },
                                    icon: Icon(Icons.favorite_border),
                                    color: primaryColor,
                                  ),
                                  top: 0,
                                  left: 115,
                                ),
                                const Positioned(
                                  child: Text(
                                    "\$ 8.000",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  ),
                                  top: 160,
                                  left: 10,
                                ),
                                Positioned(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    color: primaryColor,
                                  ),
                                  top: 145,
                                  left: 120,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    child: TabBar(
                      controller: _tabController,
                      tabs: const <Widget>[
                        Tab(
                          child: Text(
                            "Hottest",
                            style: TextStyle(
                                fontSize: 20,
                                color: darkBlueColor,
                                fontFamily: "HellixBold",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text("Popular"),
                        ),
                        Tab(
                          child: Text("New combo"),
                        ),
                        Tab(
                          child: Text("Top"),
                        ),
                      ],
                      //controller: ,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(20.0)),
                                width: 165,
                                height: 195,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        "lib/assets/Glowing-Berry-Fruit-Salad.png",
                                        width: 200,
                                        height: 200,
                                      ),
                                      top: -30,
                                      left: -15,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "Berry mango combo",
                                        style: TextStyle(
                                            fontFamily: "HellixBold",
                                            color: darkBlueColor,
                                            fontSize: 17),
                                      ),
                                      top: 135,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {
                                          print('object');
                                        },
                                        icon: Icon(Icons.favorite_border),
                                        color: primaryColor,
                                      ),
                                      top: 0,
                                      left: 115,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "\$ 8.000",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                                      top: 160,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                        color: primaryColor,
                                      ),
                                      top: 145,
                                      left: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(20.0)),
                                width: 165,
                                height: 195,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        "lib/assets/Glowing-Berry-Fruit-Salad.png",
                                        width: 200,
                                        height: 200,
                                      ),
                                      top: -30,
                                      left: -15,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "Berry mango combo",
                                        style: TextStyle(
                                            fontFamily: "HellixBold",
                                            color: darkBlueColor,
                                            fontSize: 17),
                                      ),
                                      top: 135,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {
                                          print('object');
                                        },
                                        icon: Icon(Icons.favorite_border),
                                        color: primaryColor,
                                      ),
                                      top: 0,
                                      left: 115,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "\$ 8.000",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                                      top: 160,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                        color: primaryColor,
                                      ),
                                      top: 145,
                                      left: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(20.0)),
                                width: 165,
                                height: 195,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        "lib/assets/Glowing-Berry-Fruit-Salad.png",
                                        width: 200,
                                        height: 200,
                                      ),
                                      top: -30,
                                      left: -15,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "Berry mango combo",
                                        style: TextStyle(
                                            fontFamily: "HellixBold",
                                            color: darkBlueColor,
                                            fontSize: 17),
                                      ),
                                      top: 135,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {
                                          print('object');
                                        },
                                        icon: Icon(Icons.favorite_border),
                                        color: primaryColor,
                                      ),
                                      top: 0,
                                      left: 115,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "\$ 8.000",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                                      top: 160,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                        color: primaryColor,
                                      ),
                                      top: 145,
                                      left: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detail()));
                              },
                              child: Container(
                                margin: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: BorderRadius.circular(20.0)),
                                width: 165,
                                height: 195,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        "lib/assets/Glowing-Berry-Fruit-Salad.png",
                                        width: 200,
                                        height: 200,
                                      ),
                                      top: -30,
                                      left: -15,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "Berry mango combo",
                                        style: TextStyle(
                                            fontFamily: "HellixBold",
                                            color: darkBlueColor,
                                            fontSize: 17),
                                      ),
                                      top: 135,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {
                                          print('object');
                                        },
                                        icon: Icon(Icons.favorite_border),
                                        color: primaryColor,
                                      ),
                                      top: 0,
                                      left: 115,
                                    ),
                                    const Positioned(
                                      child: Text(
                                        "\$ 8.000",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor),
                                      ),
                                      top: 160,
                                      left: 10,
                                    ),
                                    Positioned(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                        color: primaryColor,
                                      ),
                                      top: 145,
                                      left: 120,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text('2'),
                        Text('3'),
                        Text('4'),
                      ],
                      controller: _tabController,
                    ),
                  )
                ],
              ))),
    );
  }
}
