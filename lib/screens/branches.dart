import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Branches extends StatelessWidget {
  static const IconData call_rounded =
      IconData(0xf608, fontFamily: 'MaterialIcons');
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();

  void sendMessage(String message) {
    print(message);
    _textController.clear();
  }

  void sendMessage2(String message) {
    print(message);
    _textController2.clear();
  }

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
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Branch(context, true),
            Branch(context, false),
          ],
        )
      ],
    );
  }

  Container Branch(BuildContext context, bool u) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: Colors.pink),
        color: Color.fromARGB(255, 248, 204, 240).withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            child:
                Image.asset('assets/images/sidelook.png', fit: BoxFit.fitWidth),
          ),
          SizedBox(
            height: 10,
          ),
          if (u ==
              true) // Replace 'condition' with your actual condition, e.g., u == true
            Container(
              child: Text(
                'Patna Branch',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          else if (u == false)
            Container(
              child: Text(
                'Ranchi Branch',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          // Address
          SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'ADDRESS : \nChunva Toli Sarna Samiti, Near By Akansha Apartments Kantatoli, Ranchi, Jharkhand - 834001',
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
          ),
          SizedBox(
            height: 10,
          ),

          if (u == true)
            TextField(
              textAlign: TextAlign.center,
              controller: _textController,
              decoration: const InputDecoration(
                  hintFadeDuration: Duration(milliseconds: 500),
                  hintText: 'Patna'),
            )
          else if (u == false)
            TextField(
              textAlign: TextAlign.center,
              controller: _textController2,
              decoration: const InputDecoration(
                  hintFadeDuration: Duration(milliseconds: 500),
                  hintText: 'Ranchi'),
            ),

          SizedBox(
            height: 10,
          ),

          if (u == true)
            ElevatedButton(
              onPressed: () {
                if (_textController.text.isNotEmpty) {
                  sendMessage(_textController.text);
                }
              },
              child: const Text('I verify'),
            )
          else if (u == false)
            ElevatedButton(
              onPressed: () {
                if (_textController2.text.isNotEmpty) {
                  sendMessage2(_textController2.text);
                }
              },
              child: const Text('I verify'),
            ),
        ],
      ),
    );
  }
}
