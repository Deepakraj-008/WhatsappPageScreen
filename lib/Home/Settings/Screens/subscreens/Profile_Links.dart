import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Linkss extends StatefulWidget {
  const Linkss({super.key});

  @override
  State<Linkss> createState() => _LinkssState();
}

class _LinkssState extends State<Linkss> {
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
          Text('Links', style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 25,
          ),),
          Spacer()
        ],
      ),
    )
    );
  }
}
