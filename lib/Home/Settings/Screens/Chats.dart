import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Chatss extends StatefulWidget {
  const Chatss({super.key});


  @override
  State<Chatss> createState() => _ChatssState();
}

class _ChatssState extends State<Chatss> {

  int _value=1;


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
          Text('Chats', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.white),),
          Spacer()
        ],

      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Display"),
          ),
          ListTile(
            onTap: (){
                showDialog(context: context, builder: (context)
                {
                  return AlertDialog(
                    title: Text("Choose theme"),
                    actions: [
                      Row(
                        children: [
                          Radio(value: 1, groupValue: _value, onChanged: ( value ){
                            setState(() => _value=value!);
                          }),SizedBox(width: 20,),Text("System default")
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Radio(value: 2, groupValue: _value, onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          }),SizedBox(width: 20,),Text("Light")
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Radio(value: 3, groupValue: _value, onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          }),SizedBox(width: 20,),Text("Dark")
                        ],
                      ),
                      Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){

                            }, child: Text("Cancel",style: TextStyle(color: Colors.greenAccent),)),SizedBox(width: 25,),
                            TextButton(
                                onPressed: (){

                                }, child: Text("Save",style: TextStyle(color: Colors.greenAccent),)),SizedBox(width: 10,),
                          ]
                      )
                    ],
                  );
                });
            },
            leading: IconButton(onPressed: (){

            }, icon: Icon(Icons.sunny)),
            title: Text("Theme"),
            subtitle: Text("System default"),
          ),
          ListTile(
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.color_lens_outlined)),
            title: Text("Default chat theme"),
          )
        ],
      ),
    )
    );
  }


}
