import 'package:flutter/material.dart';

import 'first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const intro(),
    );
  }
}
class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override

  _introState createState() => _introState();
}

class _introState extends State<intro> {
  next(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>first()));

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold,fontSize: 30),),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/welcome.jpg",
              width: 300,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Hello my friend ",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold,fontSize: 20)),
            Text("Lets Know about one peice hero",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold,fontSize: 20)),
              SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){next();},
              child: Text(
                "NEXT",
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),)
          ],
        ),
      ),
    );
  }
}


