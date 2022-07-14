import 'package:flutter/material.dart';

import '../authentication/auth_screen.dart';
import '../global/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(sharedPreferences?.getString("name") ?? ""),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.cyan, Colors.amber],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 1.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text("Logout"),
          style: ElevatedButton.styleFrom(primary: Colors.cyan),
          onPressed: () {
            firebaseAuth.signOut().then((value) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuthScreen()));
            });
          },
        )));
  }

  Card makeDashboardItem(String title, IconData iconData, int index ){
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container()
    );
  }
}
