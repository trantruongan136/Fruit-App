import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruit_app/screens/login_page.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Tran Truong An'), 
          accountEmail: Text('Trantruongan1236@gmail.com'), 
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network('https://imgt.taimienphi.vn/cf/Images/np/2021/11/26/hinh-anh-avatar-dep-2.jpg',
              height: 90,
              width: 90,
              fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1653629154017-80db78b02610?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
              fit: BoxFit.cover
              )
          ),
          ),
          ListTile(
            title: Text('Favorite'),
            leading: Icon(Icons.favorite),
            onTap: (){},
          ),
          ListTile(
            title: Text('Order Status'),
            leading: Icon(Icons.food_bank),
            onTap: (){},
          ),
          ListTile(
            title: Text('Share'),
            leading: Icon(Icons.share),
            onTap: (){},
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: (){},
          ),
          ListTile(
            title: Text('Log Out'),
            leading: Icon(Icons.logout),
            onTap: (){
              FirebaseAuth.instance.signOut().then((value) => 
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(title: "Login"))));
            },
          ),
        ],
      ),
    );
  }
}