import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        toolbarHeight: 60,
        actions: [
         IconButton(onPressed: (){
            Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back_sharp,color: Colors.white,)),
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            radius: 20,
            child: Icon(
              Icons.person,
              color: Colors.white.withOpacity(0.9),
              size: 20,
            ),
             ),SizedBox(width: 10,),
           Text('Username',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.9),
            ),
           ),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],

      ),
         body: Column(
           children: [
             Spacer(),Center(child: Text('Chat Heree',style: TextStyle(fontSize: 30,color: Colors.grey),),),Spacer(),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(6.0),
                   child: Container(
                     height: 50,
                     width: 330,
                     decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.9),
                       borderRadius: BorderRadius.all(
                          Radius.circular(30),
                       ),
                     ),
                     child: Row(
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.black,)),
                          SizedBox(width: 5,),
                          Expanded(
                            child: TextField(
                              cursorHeight: 18,
                              autocorrect: true,
                              cursorColor: Colors.black,
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'Type a message',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,color: Colors.black,)),
                          SizedBox(width: 5,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.currency_rupee,color: Colors.black,)),
                         SizedBox(width: 5,),
                         IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.black,)),
                       ],
                     ),
                   ),
                 ),
                 CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    radius: 25,
                    child: Icon(
                      Icons.mic,
                      color: Colors.black.withOpacity(0.9),
                      size: 25,
                    ),
                 )

               ],
             )
           ],
         ),
    )
    );
  }
}
