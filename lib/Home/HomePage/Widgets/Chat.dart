import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../Models/models.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  TextEditingController _controller = TextEditingController();

  bool indexx = false;


  void _ontap() {
    final text = _controller.text;
    final data = text.trim().isNotEmpty;
    setState(() {
      indexx = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_ontap);
  }
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 60,
        actions: [
         IconButton(onPressed: (){
            Navigator.pop(context);
         }, icon: Icon(Icons.arrow_back_sharp,)),
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
            ),
           ),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call,)),
          IconButton(onPressed: ()
          {
            //final RelativeRect position=RelativeRect.fromLTRB(10, 86, 0, 0);
            showMenu(
              context: context,
             position: RelativeRect.fromLTRB(100, 80, 0, 0),
             // position: position,
              items: [
                PopupMenuItem(
                  onTap: (){},
                  child: Text("View contact", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Search", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Add to list", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Media,links, and docs", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Unmute notifications", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Disappearing messages", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Text("Chat theme", style: TextStyle()),
                ),
                PopupMenuItem(
                  onTap: (){},
                  child: Row(
                    children: [
                      Text("more ", style: TextStyle()),SizedBox(width: 90,),
                      Icon(Icons.arrow_right,)
                    ],
                  ),
                ),
              ],
            );
          }, icon: Icon(Icons.more_vert,)),
        ],

      ),
         body: GestureDetector(
             onTap:() {
               FocusScope.of(context).unfocus();
             },
           child: Stack(
             children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset('assets/images/bgimg.png',
                   fit: BoxFit.cover,
                   height: height,
                   width:width,
                 ),
              ),
              Column(
               children: [
                 Expanded(
                     child: ListView.builder(
                         itemCount: 1,
                         itemBuilder: (context,index){
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              const SizedBox(height: 10,),
                              const Sender(message: 'hii Sir', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'hii', time: '15:12PM'),
                              const SizedBox(height: 15,),
                               Center(child: Container(child: Center(child: Text('April 3,2025',style: TextStyle())),width: 85,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'This is deepak', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'hii deepak tell me', time: '15:12PM'),
                              const SizedBox(height: 15,),
                               Center(child: Container(child: Center(child: Text('Friday',style: TextStyle(),)),width: 55,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'How r u sir', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'Good deepak what about u ', time: '15:12PM'),
                              const SizedBox(height: 15,),
                               Center(child: Container(child: Center(child: Text('Monday', style: TextStyle(),)),width: 65,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'fine sir', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'have u completed today\'s task', time: '15:12PM'),
                              const SizedBox(height: 15,),
                               Center(child: Container(child: Center(child: Text('Tuesday',style: TextStyle(),)),width: 65,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'yes sir', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'Good', time: '15:12PM'),
                             Center(child: Container(child: Center(child: Text('Wednesday',style: TextStyle(),)),width: 80,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'ok sir', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'ok ', time: '15:12PM'),
                              const SizedBox(height: 15,),
                               Center(child: Container(child: Center(child: Text('Yesterday',style: TextStyle(),)),width: 75,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'Sir, should i get the task on the tomorrow morning', time: '15:12PM'),
                              const SizedBox(height: 10,),
                              const Reciever(message: 'yes i will give the task tomorrow meet me in the office', time: '15:12PM'),
                              const SizedBox(height: 15,),
                              Center(child: Container(child: Center(child: Text('Today',style: TextStyle())),width: 55,height: 25,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),)),
                              const SizedBox(height: 5,),
                              const Sender(message: 'sure sit thank u 😊', time: '15:12PM'),
                              const SizedBox(height: 5,),
                                Reciever(message: '', time: '12:23 PM',img: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',),
                              const SizedBox(height: 5,),
                                Sender(message: '', time: '12:23 PM',img: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',),
                             const Sender(message: 'This is my task ', time: '15:12PM'),
                              const SizedBox(height: 5,),
                                Reciever(message: '', time: '12:23 PM',img: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',),
                              const SizedBox(height: 5,),
                                Sender(message: '', time: '12:23 PM',img: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',),
                              const Sender(message: 'hii sir', time: '15:12PM'),

                            ],
                          );
                 }
                 )
                 ),
                 SizedBox(height: 5,),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 6.0,right: 6,bottom: 6,top: 1),
                       child: Container(
                         height: 50,
                         width: 330,
                         decoration: BoxDecoration(
                           color: Theme.of(context).scaffoldBackgroundColor,
                           borderRadius: BorderRadius.all(
                              Radius.circular(30),
                           ),
                         ),
                         child: Row(
                           children: [
                             IconButton(onPressed: (){},
                                 icon: Icon(Icons.emoji_emotions_outlined,)
                             ),
                              Expanded(
                                child: TextField(
                                  cursorHeight: 18,
                                  autocorrect: true,
                                  cursorColor: Color(0xFF757D80),
                                  controller: _controller,
                                  decoration: InputDecoration(
                                    hintText: 'Type a message',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Theme.of(context).scaffoldBackgroundColor
                                    ),
                                  ),
                                ),
                              ),
                              indexx ?
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file,),
                              ) :
                              Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.currency_rupee,)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,)),
                                ],
                              )

                           ],
                         ),
                       ),
                     ),
                     indexx ?  CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: 25,
                        child: IconButton(
                          onPressed: ()
                          {
                            FocusScope.of(context).unfocus();
                            _controller.clear();
                          },
                          icon : Icon(Icons.send,color: Theme.of(context).scaffoldBackgroundColor,) ,
                        ),
                     ) :
                     CircleAvatar(
                       backgroundColor: Colors.greenAccent,
                       radius: 25,
                       child: IconButton(
                         onPressed: ()
                         {

                         },
                         icon : Icon(Icons.mic,color: Theme.of(context).scaffoldBackgroundColor,) ,
                       ),
                     )
                   ],
                 )
               ],
             ),
               ],
           ),
         ),
    )
    );
  }
}
