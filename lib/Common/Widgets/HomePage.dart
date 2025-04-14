import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:whatsappscreen/Common/Widgets/Chat.dart';

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
          backgroundColor: Colors.black.withOpacity(0.5),
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.5),
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
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {

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
                  padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      controller: _textController,
                      cursorColor: Colors.grey.withOpacity(0.7),
                      keyboardAppearance: Brightness.dark,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Search...',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.withOpacity(0.6),
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.6),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              } else if (index == 1) {
                return SizedBox(
                  height: 40,
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
                              color: Colors.grey.withOpacity(0.2),
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
                                  color: Colors.white.withOpacity(0.9),
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
                          color: Colors.white.withOpacity(0.9),
                        ),
                        SizedBox(width: 30),
                        Text(
                          'Archived',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '41',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
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
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s')
                              ,fit: BoxFit.fill,)
                        ),
                      )
                  ),
                  title: Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'chast Now ',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text(
                    'Yesterdays',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
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
            backgroundColor: Colors.black,//.withOpacity(0.5),
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
                icon: Icon(Icons.chat_rounded),
                label: 'Chats',
                activeIcon: Icon(Icons.chat_bubble),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.thumbs_up_down_outlined),
                label: 'Updates',

                activeIcon: Icon(Icons.chat_bubble),
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
            child: Icon(Icons.mark_unread_chat_alt_outlined),
          ),
        ),
      );
    }
  }