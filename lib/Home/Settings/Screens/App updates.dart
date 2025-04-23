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
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor:Colors.white ,
            scrolledUnderElevation: 0,
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp,color: Colors.black,size: 30,)),
              SizedBox(width: 65,),
              Text('App update settings', style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,color:Colors.black,
              ),),
              Spacer(),
            ],

          ),
    )
    );
  }
}
