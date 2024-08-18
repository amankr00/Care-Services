import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
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
           RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'About ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'Khushboo Care & Services',
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
          Divider(color: Colors.white, height: 20),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.45,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'We take Clients as part of Family Khushboo Care and Service believes in treating our clients and their families with love, prestige and respect. Treating our clients like members of our extended family helps us to meet every need and strengthen your peace of mind. Employing Home Nursing Care, comes with an assurance of proper care for your loved ones. We Provide total domestic service Like Cook, Maid, Driver, Servsnt, Home Nurse, Compounder, SeniorCitizen Care, Guard, Crea Giver, Peon, Nanny (Child Care), Office Boy, Domestic Helper, Placement Service & etc',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
                    )),
              ),
              SizedBox(
                width: 72,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: 250,
                child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Image.asset('assets/images/about.jpg',
                        fit: BoxFit.cover)),
              )
            ],
          ),
          SizedBox(
            height: 62,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.45,
                child: Image.asset('assets/images/lowlogo2.png',
                    fit: BoxFit.cover),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.45,
                child: Image.asset('assets/images/sideloook.png',
                    fit: BoxFit.fill),
              ),
              // Container(
              //   alignment: Alignment.center,
              //   width: MediaQuery.of(context).size.width * 0.4,
              //   child:
              //       Image.asset('assets/images/lowlogo3.png', fit: BoxFit.fill),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
