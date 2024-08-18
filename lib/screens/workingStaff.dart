import 'dart:async';
import 'package:flutter/material.dart';

class WorkingStaff extends StatefulWidget {
  @override
  _WorkingStaffState createState() => _WorkingStaffState();
}

class _WorkingStaffState extends State<WorkingStaff> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'OUR ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' WORKING',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' STAFF',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 32,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Divider(height: 1, color: Colors.white),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Expanded(
            child: PageView(
            physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                staffPage(context, [
                  officeStaff(context, 'Ram Kumar', 'assets/images/p1.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                ]),
                staffPage(context, [
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                  officeStaff(context, 'Aman Kumar', 'assets/images/p2.png'),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget staffPage(BuildContext context, List<Widget> staffWidgets) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: staffWidgets,
    );
  }

  Container officeStaff(BuildContext context, String name, String dp) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.47,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.pink),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Container(
            height: 250,
            child: Image.asset(dp, fit: BoxFit.fitWidth),
          ),
          SizedBox(height: 15),
          Divider(height: 1, color: Colors.white),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Office CEO, Receptionist',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
