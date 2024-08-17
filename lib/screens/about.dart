import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        // border: Border.all(width: 3, color: Colors.pink),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 12,
          ),
          Text(
            'About Khushboo Care & Services',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(color: Colors.white, height: 20),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: 600,
                height: 300,
                child: Text(
                  'We take Clients as part of Family Khushboo Care and Service believes in treating our clients and their families with love, prestige and respect. Treating our clients like members of our extended family helps us to meet every need and strengthen your peace of mind. Employing Home Nursing Care, comes with an assurance of proper care for your loved ones. We Provide total domestic service Like Cook, Maid, Driver, Servsnt, Home Nurse, Compounder, SeniorCitizen Care, Guard, Crea Giver, Peon, Nanny (Child Care), Office Boy, Domestic Helper, Placement Service & etc',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(
                width: 52,
              ),
              Container(
                width: 600,
                height: 250,
                child:
                    Image.asset('assets/images/about.jpg', fit: BoxFit.cover),
              )
            ],
          ),
        ],
      ),
    );
  }
}
