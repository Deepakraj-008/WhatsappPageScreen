import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarredMessagess extends StatefulWidget {
  const StarredMessagess({super.key});

  @override
  State<StarredMessagess> createState() => _StarredMessagessState();
}

class _StarredMessagessState extends State<StarredMessagess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF0B1014),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF0B1014),
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)
              ), SizedBox(width: 5,),
              Text('Starred messages', style: TextStyle(
                  fontSize: 21,
                  color: Colors.white),),
              Spacer(),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search, color: Colors.white,)
              ),

              IconButton(onPressed: () {

              }, icon: Icon(Icons.more_vert, color: Colors.white,)
              ),
              SizedBox(width: 2,)
            ],
          ),

    ));
  }
}
