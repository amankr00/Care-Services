import 'package:flutter/material.dart';

class Branches extends StatelessWidget {
  static const IconData call_rounded =
      IconData(0xf608, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        // Divider(height: 3,color: Colors.black,),
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
            text: 'BRANCHES',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 32,
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ])),
        SizedBox(
          height: 18,
        ),
        Divider(
          height: 3,
          color: Colors.black,
        ),

        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              height: 280,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.pink),
                color: Color.fromARGB(255, 228, 184, 170).withOpacity(0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Image.asset('assets/images/sidelook.png',
                        fit: BoxFit.fitWidth),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Patna Branch',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Address
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'New Bypass, RMS Colony Main Rd, Ashok Nagar, Kankarbagh, Patna, Bihar 800020',
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  // Contact Numbers

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            call_rounded,
                            size: 20,
                          ),
                          Text('7070790688'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            call_rounded,
                            size: 20,
                          ),
                          Text('7070790688'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 280,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.pink),
                color: Color.fromARGB(255, 228, 184, 170).withOpacity(0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 300,
                    child: Image.asset('assets/images/sidelook.png',
                        fit: BoxFit.fitWidth),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Ranchi Branch',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Address
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Chunva Toli Sarna Samiti, Near By Akansha Apartments Kantatoli, Ranchi, Jharkhand - 834001',
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  // Contact Numbers

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            call_rounded,
                            size: 20,
                          ),
                          Text('7070790688'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            call_rounded,
                            size: 20,
                          ),
                          Text('7070790688'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
