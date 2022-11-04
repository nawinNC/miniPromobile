
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectt/navhome.dart';
import 'homme/home.dart';
import 'homme/menu.dart';
import 'homme/camera.dart';
import 'package:projectt/login.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  final _formstate =GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  final auth = FirebaseAuth.instance;
  int _currentIndex = 0;

  final tabs = [
    Homescreen(),
    menu(),
    Camera()
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

           body: tabs[_currentIndex],
           bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.pinkAccent,
            unselectedItemColor: Color.fromARGB(255, 6, 102, 228),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label : 'Home',
                // backgroundColor:  Color.fromARGB(255, 207, 111, 216)
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_sharp),
                label : 'Zone',
                // backgroundColor:  const Color.fromARGB(255, 105, 110, 255)
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label : 'Camera',
                // backgroundColor:  Color.fromARGB(255, 26, 28, 107)
                ),
            ],
            onTap: (int index){
              setState(() {
                _currentIndex = index;
              });
            },
           ),
        drawer: Drawer(
          child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountEmail: Text(' Users '),
              accountName: null,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 6, 102, 228),
              ),
              currentAccountPicture: CircleAvatar(
                child: FlutterLogo(
                  size: 50,
                ),
                backgroundColor: Colors.black,
              ),
            ),
            // ListTile(
            //   title: const Text('Item 1'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              title: const Text('AboutUs'),
              onTap: () {
                Navigator.pushNamed(context,'/about');
              },
            ),
            ListTile(
              title: const Text('Log Out',
              style: TextStyle(
                color: Colors.red
              ),),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Log Out")));
              },

            )    
          ],
        ),
      ),
    );
  }
}
