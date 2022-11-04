import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectt/locals/doypatang.dart';
import 'package:projectt/locals/granghuang.dart';
import 'package:projectt/locals/longgang.dart';
import 'package:projectt/locals/longgangtai.dart';
import 'package:projectt/locals/majam.dart';
import 'package:projectt/locals/teeloshu.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        bottomOpacity: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountEmail: Text('accountEmail'),
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
              title: const Text('AboutAPP'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, bottom: 7),
                  child: Row(
                    children: const [
                      Text(
                        'To travel is to live ',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 25),
                  child: CupertinoSearchTextField(
                    backgroundColor: Colors.grey[300],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 12, bottom: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Recommend ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 550,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Majam(),
                      Ganghueng(),
                      Doypatang(),
                      Teeloshu(),
                      Longgang(),
                      Longgangtai(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
