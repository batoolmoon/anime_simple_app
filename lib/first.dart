import 'package:flutter/material.dart';
import 'character.dart';
import 'detail.dart';


class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  List<character> persons=[];
  More(character anime) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => details(anime: anime)));
  }
  @override
  void initState() {
    super.initState();
    persons.add(character("assets/luffi.jpg","Luffy", "Hero of the story"));
    persons.add(character("assets/zoro.jpg","Zoro", "Luffy friend in the adventure"));
    persons.add(character("assets/sanji.jpg","Sanji", "Luffy friend in the adventure"));
    persons.add(character("assets/tony.jpg","Tony Tony", "Luffy animal in the adventure"));
    persons.add(character("assets/captien.jpg","Gol D. Roger", "Captain of the Roger Pirates, "));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Image.asset(persons[index].image.toString()),
              title: Text(persons[index].name.toString()),
              subtitle:Text(persons[index].informaton.toString()) ,
              minVerticalPadding: 40,
              onTap:  () {
                More(persons[index]);
              },
            );
          }),
    );
  }
}

