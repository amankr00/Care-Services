import 'package:flutter/material.dart';

class OfficeStaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 250,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.pink),
                borderRadius: BorderRadius.circular(30)),
          ),
          Container(
            width: 250,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.pink),
                // color:Color.fromARGB(255, 23, 215, 129),
                borderRadius: BorderRadius.circular(30)),
          ),
        ],
      )
    ]));
  }
}
