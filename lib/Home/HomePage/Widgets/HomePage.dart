import 'package:flutter/material.dart';
  import 'package:get/get.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Linked%20devices.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/New%20Broadcast.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Newgroups.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/Payment.dart';
import 'package:whatsappscreen/Home/Settings/Widgets/StarredMessages.dart';

import '../../../main.dart';
import 'Chat.dart';
import '../../Settings/Widgets/Settings.dart';

  class HomeScreen extends StatefulWidget {
    final ThemeMode? currentMode;
    final ValueChanged<ThemeMode>? onThemeChanged;
    const HomeScreen({
      super.key,
       this.currentMode,
       this.onThemeChanged,
    });
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

    // ThemeMode _themeMode = ThemeMode.system;
    //
    // void _updateTheme(ThemeMode mode) {
    //   setState(() => _themeMode = mode);
    // }
    //
    // late ThemeMode tempMode;
    // final themeController = Get.find<ThemeController>();
    //
    // @override
    // void initState() {
    //   super.initState();
    //   tempMode = themeController.themeMode.value;
    // }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar
          (
          scrolledUnderElevation: 0,
          backgroundColor: (Theme.of(context).scaffoldBackgroundColor != Colors.white ) ? Theme.of(context).scaffoldBackgroundColor :Colors.green   ,
          automaticallyImplyLeading: false,
          title: Text(
            'WhatsApp',
            style: Theme.of(context).textTheme.headlineMedium
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner,
              ),
            ),
            IconButton(
              onPressed: () {

              },
              icon: Icon(
                Icons.camera_alt_outlined,
              ),
            ),
            IconButton(
              onPressed: () {
                final RelativeRect position=RelativeRect.fromLTRB(2, 86, 0, 0);
                showMenu(
                    context: context,
                    position: position,
                    items: [
                      PopupMenuItem(
                        onTap: ()=> Get.to(Newgroupadd()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("New group", ),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: ()=> Get.to(NewBroadcasts()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("New broadcast", ),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: ()=> Get.to(Linkeddevicess()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Linked devices",),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: ()=> Get.to(StarredMessagess()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Stared messages",),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: ()=> Get.to(Payments()),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Payments",),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: ()=> Get.to(HomeScreen(
                          // onThemeChanged: _updateTheme,
                          // currentMode: _themeMode,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Read all",),
                        ),
                      ),
                  PopupMenuItem(
                    onTap: ()=> Get.to(Settings(
                    )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text("Settings",),
                      ),
                    ),

                ]);
                //Navigator.pop(context);
                },
              icon: Icon(
                Icons.more_vert,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 23,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.only(left: 8.0,bottom: 20,right: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
                    controller: _textController,
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Ask Meta AI or Search',
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 16,
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
                                fontSize: 13,
                                color: Colors.grey.shade600,fontWeight: FontWeight.w400
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
                          color: Colors.grey.shade600,
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Archived',
                        style: TextStyle(
                          fontSize: 15,
                            color: Colors.grey.shade600,fontWeight: FontWeight.w400
                        ),
                      ),
                      Spacer(),
                      Text(
                        '41',
                        style: TextStyle(
                          fontSize: 15,
                            color: Colors.grey.shade600,fontWeight: FontWeight.w400
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
                                    child: Container(
                                      decoration: BoxDecoration(
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'chat Now ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Yesterdays',
                  style: TextStyle(
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
          selectedLabelStyle: TextStyle(
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
              icon: Icon(Icons.phone_outlined),
              label: 'Calls',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green.shade500,
          child: Stack(children: [Icon(Icons.messenger,size: 25,color: Theme.of(context).scaffoldBackgroundColor,),Positioned(bottom: 8,right: 5,child: Icon(Icons.add,size: 15,color: Colors.green,))]),

        ),
      );
    }
  }