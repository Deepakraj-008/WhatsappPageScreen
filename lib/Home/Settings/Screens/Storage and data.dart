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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp,)),
          SizedBox(width: 10,),
          Text('Storage and data', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,),),
          Spacer()
        ],

      ),
    )
    );
  }
}
