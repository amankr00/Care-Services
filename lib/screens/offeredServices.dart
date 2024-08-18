import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double containerWidth = MediaQuery.of(context).size.width * 0.23;

    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 12 ~/ 4, // 12 containers, 4 per row
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (i) {
                return Container(
                  width: containerWidth,
                  height: 150,
                  color: Colors.primaries[(index * 4 + i) % Colors.primaries.length],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
