import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Change_Numbers extends StatefulWidget {
  const Change_Numbers({super.key});

  @override
  State<Change_Numbers> createState() => _Change_NumbersState();
}

class _Change_NumbersState extends State<Change_Numbers> {
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
          Text('Change Number', style: TextStyle(fontWeight: FontWeight.w400,
            fontSize: 25,
          ),),
          Spacer()
        ],
      ),
    )
    );
  }
}
