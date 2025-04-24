import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsappscreen/Home/Settings/Screens/Accounts.dart';

import '../../../Profile/Widgets/ProfilePage.dart';
import '../../../main.dart';
import '../Screens/App updates.dart';
import '../Screens/Avatars.dart';
import '../Screens/Chats.dart';
import '../Screens/Help.dart';
import '../Screens/Invite a friend.dart';
import '../Screens/Lists.dart';
import '../Screens/Notifications.dart';
import '../Screens/Privacy.dart';
import '../Screens/Storage and data.dart';

class Settings extends StatefulWidget {

  final ThemeMode? currentMode;
  final ValueChanged<ThemeMode>? onThemeChanged;
  const Settings({
    super.key,
     this.currentMode,
     this.onThemeChanged,
  });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  ThemeMode _themeMode = ThemeMode.system;

  void _updateTheme(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }


  List<String> titles=['Account','Privacy','Avatar','Lists','Chats','Notifications','Storage and data','App language','Help',];
  List<String> sub=["Security notifications, change number",'Block Contacts, disappearing messages','Create, edit, profile photo',
    'Manage people and groups','Theme, wallpapers,chat history','Message,group & call tones',
    'Network usage, auto-download','English (device\'s language)',"Help center, contact us, privacy policy"];


  late ThemeMode tempMode;
  final themeController = Get.find<ThemeController>();

  @override
  void initState() {
    super.initState();
    tempMode = themeController.themeMode.value;
  }


  List<IconData> icon=[Icons.vpn_key_outlined, Icons.lock_outline,Icons.face,Icons.perm_contact_calendar_outlined,Icons.message,Icons.notifications_none_outlined,
    Icons.cloud_circle,Icons.language_outlined,Icons.help_outline_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Accountss(),
      Privacys(),
      Avatars(),
      Listss(),
      Chatss(
      ),
      Notifications(),
      StorageandData(),
      Settings(
      ),
      Helps(),
    ];
    return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            scrolledUnderElevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, )
              ), SizedBox(width: 5,),
              Text('Settings', style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 25,
                  ),),
              Spacer(),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.search, )
              ),
              SizedBox(width: 10,)
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Theme.of(context).dividerColor.withOpacity(0.1)),),
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('LUCKY ~❤️',
                    style: TextStyle(
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
                Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Theme.of(context).dividerColor.withOpacity(0.1)),),
                SizedBox(height: 5,),
                ListView.builder(
                    itemCount: titles.length,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Container(
                        child: ListTile(
                          onTap: (){
                            Get.to(screens[index]);
                          },
                          leading: Icon(icon[index],),
                          title: Text(titles[index],style:TextStyle()),
                          subtitle: Text(sub[index],style:TextStyle()),
                        ),
                      );
                    }),

                 ListTile(
                   onTap: (){
                     Get.to(InviteAfriend());
                   },
                  leading: const Icon(Icons.group_add_outlined,),
                  title: const Text('Invite a friend',style:TextStyle()),
                ),
                ListTile(
                  onTap: (){
                    Get.to(Appupdatess());
                  },
                  leading: const Icon(Icons.group_add_outlined,),
                  title: const Text('App updates',style:TextStyle()),
                ),
                 // const Padding(
                 //   padding: EdgeInsets.only(left: 15.0,top: 10),
                 //   child: Row(
                 //     children: [
                 //      // Icon(Icons.security_update_good_outlined,color: Colors.grey), SizedBox(width: 20,),
                 //
                 //       Text("App updates",style:TextStyle(color: Colors.white,)),
                 //     ],
                 //   ),
                 // ),
               const Padding(
                 padding: EdgeInsets.only(left: 10.0,top: 10,bottom: 10),
                 child: Align(alignment: Alignment.topLeft,
                     child: Text("Also from meta",style:TextStyle())),
               ),

                 ListTile(
                  leading: Image.asset('assets/images/instalogo.png',),
                  title: Text('Open Instagram',style:TextStyle()),
                ),
                ListTile(
                  leading: Image.network('https://img.freepik.com/premium-vector/facebook-icon-design-facebook-vector-sign-facebook-colorful-logo-png_1179178-278.jpg'),
                  title: Text('Open Facebook',style:TextStyle()),
                ),
                ListTile(
                  leading: Image.network('https://img.freepik.com/free-vector/threads-logo-black-background-vector_1017-45262.jpg'),
                  title: Text('Open Treads',style:TextStyle()),
                ),

              ],
            ),
          ),
        )
    );
  }
}
