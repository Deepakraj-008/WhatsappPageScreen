import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appupdatess extends StatefulWidget {
  const Appupdatess({super.key});

  @override
  State<Appupdatess> createState() => _AppupdatessState();
}

class _AppupdatessState extends State<Appupdatess> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF0B1014),
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,))
        ],
        title: Text('App updates settings', style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 25,
            color: Colors.white),),
        centerTitle: true,
      ),
    )
    );
  }
}
