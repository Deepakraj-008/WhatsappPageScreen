import 'package:flutter/material.dart';
  import 'package:get/get.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Linked%20devices.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/New%20Broadcast.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Newgroups.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Payment.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/StarredMessages.dart';

import 'Chat.dart';
import '../../Settings/Widgets/Settings.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({super.key});

    @override
    State<HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
    TextEditingController _textController = TextEditingController();
    int indexs = 0;
    int len = 0;
    List<String> types = [
      'All',
      'Unread',
      'Favorites',
      'Groups',
      '+',
    ];



    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF0B1014),
          appBar: AppBar
            (
            backgroundColor: Color(0xFF0B1014),
            automaticallyImplyLeading: false,
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  final RelativeRect position=RelativeRect.fromLTRB(2, 86, 0, 0);
                  showMenu(
                      context: context,
                      position: position,
                      color: Color(0xFF252A2D),
                      items: [
                        PopupMenuItem(
                          onTap: ()=> Get.to(Newgroupadd()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("New group", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: ()=> Get.to(NewBroadcasts()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("New broadcast", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: ()=> Get.to(Linkeddevicess()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Linked devices", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: ()=> Get.to(StarredMessagess()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Stared messages", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: ()=> Get.to(Payments()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Payments", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        PopupMenuItem(
                          onTap: ()=> Get.to(HomeScreen()),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Read all", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                    PopupMenuItem(
                      onTap: ()=> Get.to(Settings()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Settings", style: TextStyle(color: Colors.white)),
                        ),
                      ),

                  ]);
                  //Navigator.pop(context);
                  },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: 23,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.only(left: 8.0,bottom: 20,),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF23282C),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFF0B1014))
                    ),
                    child: TextField(
                      controller: _textController,
                      cursorColor: const Color(0xFF666E71),
                      keyboardAppearance: Brightness.dark,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Search...',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xFF666E71),
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFF666E71),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              } else if (index == 1) {
                return SizedBox(
                  height: 35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: types.length,
                    separatorBuilder: (context, index) => SizedBox(width: 4),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(width: 5,),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFF23282D),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  len = index;
                                });
                              },
                              child: Text(
                                types[index],
                                style: TextStyle(
                                  color: Color(0xFF666E71),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              } else if (index == 2) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.add_card_sharp,
                          color: Color(0xFF666E71),
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Archived',
                          style: TextStyle(
                            color: Color(0xFF666E71),
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '41',
                          style: TextStyle(
                            color: Color(0xFF666E71),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                // Chat List Items
                return ListTile(
                  onTap: () {
                    Get.to( Chatpage());
                  },
                  leading:  CircleAvatar(
                      child: GestureDetector(
                        onTap: () {
                          showDialog(context: context, builder: (context)
                          {
                            return AlertDialog(
                              title: Text("Deepak Raj"),backgroundColor: Colors.black,
                              actions: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 100,
                                      backgroundColor: Colors.blueGrey[200],
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey[200],
                                            shape: BoxShape.circle,
                                            image: const DecorationImage(
                                              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s')
                                              ,fit: BoxFit.cover,)
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.greenAccent,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.greenAccent,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,color: Colors.greenAccent,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.info_outline_rounded,color: Colors.greenAccent,)),
                                      ],
                                    )

                                  ],
                                )
                              ],
                            );
                          });
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s')
                                ,fit: BoxFit.cover,)
                          ),
                        ),
                      )
                  ),
                  title: Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'chat Now ',
                    style: TextStyle(
                      color: Color(0xFF666E71),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'Yesterdays',
                    style: TextStyle(
                      color: Color(0xFF666E71),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.greenAccent,
            currentIndex: indexs,
            onTap: (value) {
              setState(() {
                indexs = value;
              });
            },
            showUnselectedLabels: true,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            backgroundColor: Color(0xFF0B1014),
            selectedLabelStyle: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined),
                label: 'Chats',
                activeIcon: Icon(Icons.mark_unread_chat_alt_outlined),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.thumbs_up_down_outlined),
                label: 'Updates',
              //  activeIcon: Icon(Icons.chat_bubble),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.groups),
                label: 'Communities',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Calls',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green.shade500,
            child: Stack(children: [Icon(Icons.messenger,size: 25,),Positioned(bottom: 8,right: 5,child: Icon(Icons.add,size: 15,color: Colors.green,))]),

          ),
        ),
      );
    }
  }