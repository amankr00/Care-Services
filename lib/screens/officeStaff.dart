import 'package:flutter/material.dart';

class OfficeStaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    color:Colors.deepPurple[100],
        height: MediaQuery.of(context).size.height ,
        child: Column(children: [
        SizedBox(height: 20,),
           RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'OUR ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' OFFICE',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' STAFF',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
          SizedBox(height: 18,),
          Divider(height: 1,color:Colors.white),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              officeStaff(context , 'Ram Kumar' , 'assets/images/p1.png' ),
              officeStaff(context , 'Aman Kumar' ,'assets/images/p2.png'),
            ],
          )
        ]));
  }

  Container officeStaff(BuildContext context , String name , String dp) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.47,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.pink),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      child: Image.asset(dp,
                          fit: BoxFit.fitWidth),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(height: 1, color: Colors.white),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${name}',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Office CEO , Recepsionist',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ));
  }
}
