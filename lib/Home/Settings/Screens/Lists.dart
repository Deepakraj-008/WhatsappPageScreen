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
    return Scaffold(
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

          Container(height: 1,color: Colors.grey.shade200,),
          SizedBox(height: 90,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30,bottom: 30),
            child: Text("Any list you create becomes a filter at the top of your Chats tab.",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 300,
            child: TextButton(
                onPressed: (){

                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Icon(Icons.add,color: Colors.green,)),SizedBox(width: 10,),
                      Center(child: Text("Create a Custom list",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400,),textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[100]
                )
            ),
          ),
          SizedBox(height: 12,),
          Container(height: 10,color: Colors.grey.shade200,),
        ],
      ),
    );
  }
}
