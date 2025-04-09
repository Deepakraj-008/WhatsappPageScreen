import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsappscreen/Common/Widgets/Chat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController _Textcontroller = TextEditingController();
  int indexs = 0;
  int len=0;
  List<String> types=[
    'All',
    'Unread',
    'Favorites',
    'Groups',
    '+',
  ];
 // List<String> newType=['+'];

  @override
  Widget build(BuildContext context) {

   // newType.addAll(types);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.5),
            title: Text('WhatsApp',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            leadingWidth: double.infinity,
            actions: [
              IconButton(
                onPressed: () {},
                icon:  Icon(Icons.qr_code_scanner,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  )
              ),
              IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
              ),
            ],
          ),
          body: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          controller: _Textcontroller,
                          cursorColor: Colors.grey.withOpacity(0.7),
                          keyboardAppearance: Brightness.dark,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            focusColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: 'Search...',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey.withOpacity(0.6),),
                            hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.6),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                     SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: double.infinity,
                          child: ListView.separated(itemBuilder: (context,index){
                            return Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  TextButton(onPressed: (){
                                    setState(() {
                                      len = index;
                                    });
                                  },
                                    child: Text(types[index],
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 13,
                                    ),
                                  ),
                                  ),
                                ],
                              ),
                            );
                          },itemCount: types.length,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => SizedBox(width: 4,),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    TextButton(onPressed: (){},
                        child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.add_card_sharp,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        SizedBox(width: 40,),
                        Text('Archived', style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                        ),),Spacer(),
                        Text('41', style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 15,
                        ),),
                      ],
                    )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Expanded(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Get.to(const Chatpage());
                              },
                              leading: Image.network('https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
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
                          },
                        ),
                      ),
                    ),

                  ],
                );
              }, itemCount: 1,
              shrinkWrap: true,
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
              backgroundColor: Colors.black.withOpacity(0.5),
              selectedLabelStyle: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.chat_rounded),

                    label: 'Chats',
                    activeIcon: Icon(Icons.chat_bubble),
                    backgroundColor: Colors.white.withOpacity(0.5)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.thumbs_up_down_outlined),
                    label: 'Updates',
                    backgroundColor: Colors.white.withOpacity(0.5)
                ),
                BottomNavigationBarItem(icon: Icon(Icons.groups),
                    label: 'Communities',
                    backgroundColor: Colors.white.withOpacity(0.5)),
                BottomNavigationBarItem(icon: Icon(Icons.call),
                    label: 'Calls',
                    backgroundColor: Colors.white.withOpacity(0.5)),
              ]),
          floatingActionButton: FloatingActionButton(onPressed: () {},
            backgroundColor: Colors.green.shade500,
            child: Icon(Icons.mark_unread_chat_alt_outlined,),
          ),
        )
    );
  }
}

