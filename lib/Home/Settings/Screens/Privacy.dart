import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Privacys extends StatefulWidget {
  const Privacys({super.key});

  @override
  State<Privacys> createState() => _PrivacysState();
}

class _PrivacysState extends State<Privacys> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp,)),
          SizedBox(width: 10,),
          Text('Privacy', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,),),
          Spacer()
        ],

      ),
    )
    );
  }
}
