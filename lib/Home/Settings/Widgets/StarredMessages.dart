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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            scrolledUnderElevation: 0,
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, )
              ), SizedBox(width: 5,),
              Text('Starred messages', style: TextStyle(
                  fontSize: 21,),),
              Spacer(),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search, )
              ),

              IconButton(onPressed: () {

              }, icon: Icon(Icons.more_vert, )
              ),
              SizedBox(width: 2,)
            ],
          ),

    ));
  }
}
