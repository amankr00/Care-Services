import 'package:flutter/material.dart';
import 'screens/officeStaff.dart';
import 'screens/branches.dart';
import 'screens/pageView.dart';
import 'screens/navbar.dart';
import 'screens/about.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 218, 227),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Navbar(),
              Container(
                  height: 500,
                  color: Color.fromRGBO(243, 239, 239, 0.561),
                  child: Phase4Viewer()),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [Color(0xffC5F5DD), Color(0xff95BAFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                alignment: Alignment.topCenter,
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Branches(),
                  ],
                ),
              ),
              About(),
              SizedBox(
                height: 30,
              ),
              OfficeStaff(),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        )));
  }
}
