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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp, )),
          Text('Lists', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,),),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined))
        ],

      ),
      body: Column(
        children: [

        ],
      ),
    )
    );
  }
}
