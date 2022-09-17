import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'character.dart';


class details extends StatelessWidget {
  const details({Key? key, required this.anime}) : super(key: key);
  final  character anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(anime.image.toString(),
              height: 200,
              width: 200,),
            Text(
              anime.name.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Text(
              anime.informaton.toString(),
              style: TextStyle(color: Colors.grey, fontSize: 25),
            ),
          ],),
      ),
    );
  }
}
