import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listss extends StatefulWidget {
  const Listss({super.key});

  @override
  State<Listss> createState() => _ListssState();
}

class _ListssState extends State<Listss> {


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
          Text('Lists', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.white),),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined))
        ],

      ),
    )
    );
  }
}
