import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsappscreen/Profile/Widgets/ProfilePage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> titles=['Account','Privacy','Avatar','Lists','Chats','Notifications','Storage and data','App language','Help',];
  List<String> sub=["Security notifications, change number",'Block Contacts, disappearing messages','Create, edit, profile photo',
    'Manage people and groups','Theme, wallpapers,chat history','Message,group & call tones',
    'Network usage, auto-download','English (device\'s language)',"Help center, contact us, privacy policy"];

  List<IconData> icon=[Icons.vpn_key_outlined, Icons.lock_outline,Icons.face,Icons.perm_contact_calendar_outlined,Icons.message,Icons.notifications_none_outlined,
    Icons.cloud_circle,Icons.language_outlined,Icons.help_outline_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF0B1014),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF0B1014),
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)
              ), SizedBox(width: 5,),
              Text('Settings', style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white),),
              Spacer(),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search, color: Colors.white,)
              ),
              SizedBox(width: 10,)
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),),
                SizedBox(height: 5,),
                ListTile(
                  onTap: (){
                    Get.to(Profilepages());
                  },
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(radius: 30,
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s')
                                , fit: BoxFit.fill,)
                          ),
                        )
                    ),
                  ),
                  contentPadding: EdgeInsets.only(right:10),
                  title: Text('Deepak Raj',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('LUCKY ~❤️',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  trailing: Container(
                    child: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.qr_code, color: Colors
                                  .green,size: 25,)
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.control_point_outlined,color: Colors.green,size: 25,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),SizedBox(height: 15,),
                Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),),
                SizedBox(height: 5,),
                ListView.builder(
                    itemCount: titles.length,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Container(
                        child: ListTile(
                          onTap: (){},
                          leading: Icon(icon[index],color: Colors.grey),
                          title: Text(titles[index],style:TextStyle(color: Colors.white,)),
                          subtitle: Text(sub[index],style:TextStyle(color: Colors.grey,)),
                        ),
                      );
                    }),

                 ListTile(
                   onTap: (){},
                  leading: const Icon(Icons.group_add_outlined,color: Colors.grey),
                  title: const Text('Invite a friend',style:TextStyle(color: Colors.white,)),
                ),
                 const Padding(
                   padding: EdgeInsets.only(left: 15.0,top: 10),
                   child: Row(
                     children: [
                       Icon(Icons.security_update_good_outlined,color: Colors.grey), SizedBox(width: 20,),
                       Text("App updates",style:TextStyle(color: Colors.white,)),
                     ],
                   ),
                 ),
               const Padding(
                 padding: EdgeInsets.only(left: 10.0,top: 10,bottom: 10),
                 child: Align(alignment: Alignment.topLeft,
                     child: Text("Also from meta",style:TextStyle(color: Colors.grey))),
               ),

                 ListTile(
                  leading: Image.asset('assets/images/instalogo.png',),
                  title: Text('Open Instagram',style:TextStyle(color: Colors.white,)),
                ),
                ListTile(
                  leading: Image.network('https://img.freepik.com/premium-vector/facebook-icon-design-facebook-vector-sign-facebook-colorful-logo-png_1179178-278.jpg'),
                  title: Text('Open Facebook',style:TextStyle(color: Colors.white,)),
                ),
                ListTile(
                  leading: Image.network('https://img.freepik.com/free-vector/threads-logo-black-background-vector_1017-45262.jpg'),
                  title: Text('Open Treads',style:TextStyle(color: Colors.white,)),
                ),

              ],
            ),
          ),
        )
    );
  }
}
