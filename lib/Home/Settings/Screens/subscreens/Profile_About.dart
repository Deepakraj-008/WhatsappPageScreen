import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutss extends StatefulWidget {
  const Aboutss({super.key});

  @override
  State<Aboutss> createState() => _AboutssState();
}

class _AboutssState extends State<Aboutss> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp, )),
          SizedBox(width: 10,),
          Text('About', style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 25,
          ),),
          Spacer()
        ],
      ),
    )
    );
  }
}
