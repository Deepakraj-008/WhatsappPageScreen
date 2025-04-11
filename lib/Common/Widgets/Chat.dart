import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappscreen/Core/Models/models.dart';

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
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s'),fit: BoxFit.fill,)),
            )
          ),
       SizedBox(width: 10,),
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
             Expanded(
                 child: ListView.builder(
                     itemCount: 1,
                     itemBuilder: (context,index){
                      return const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Sender(message: 'hii Sir', time: '15:12PM'),
                          Reciever(message: 'hii', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('April 3,2025',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'This is deepak', time: '15:12PM'),
                          Reciever(message: 'hii deepak tell me', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('Friday',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'How r u sir', time: '15:12PM'),
                          Reciever(message: 'Good deepak what about u ', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('Monday',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'fine sir', time: '15:12PM'),
                          Reciever(message: 'have u completed today\'s task', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('Tuesday',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'yes sir', time: '15:12PM'),
                          Reciever(message: 'Good', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('Yesterday',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'should i get the task tomorrow', time: '15:12PM'),
                          Reciever(message: 'yes i will give the task on tomorrow meet me in the office', time: '15:12PM'),
                          Center(child: SizedBox(child: Text('Today',style: TextStyle(color: Colors.white),),)),

                          Sender(message: 'sure sit thank u 😊', time: '15:12PM'),
                        ],
                      );
             }
             )
             ),

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
