import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
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
              Text('Payments', style: TextStyle(
                  fontSize: 21,
                  color: Colors.white),),
              Spacer(),

            ],
          ),

        ));
  }
}
