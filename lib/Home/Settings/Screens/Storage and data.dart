import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorageandData extends StatefulWidget {
  const StorageandData({super.key});

  @override
  State<StorageandData> createState() => _StorageandDataState();
}

class _StorageandDataState extends State<StorageandData> {


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
          }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)),
          SizedBox(width: 10,),
          Text('Storage and data', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.white),),
          Spacer()
        ],

      ),
    )
    );
  }
}
