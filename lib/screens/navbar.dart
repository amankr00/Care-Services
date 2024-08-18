import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // LOGO

          // Container(
          // width: 50,
          // height: 60,
          // child: Image.asset('asesets/images/re.png'),),

          // Company Name

          Container(
              // width: MediaQuery.of(context).size.width,
              height: 60,
              // color : Color(0xff603F8B),
              alignment: Alignment.center,
              child: Text(
                'Khushboo Care & Services',
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
