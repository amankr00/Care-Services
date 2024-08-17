import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(
              title: 'Ns',
            ),
        // '/': (context) => Ap(),
        // '/': (context) => Frm(title: 'Stark',)
        // '/': (context) => CustomPaint(),
        // '/': (context) => Container(height: 400,color:Colors.grey,child: HSView(),)
        // '/' : (context) => TapToScroll(),
        //'/' : (context) => Phase1(10,10,true),
      },
    );
  }
}
