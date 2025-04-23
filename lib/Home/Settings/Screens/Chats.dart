// import 'dart:core';
//
// import 'package:flutter/material.dart';
//
// class Chatss extends StatefulWidget {
//   final ThemeMode currentMode;
//   final ValueChanged<ThemeMode> onThemeChanged;
//
//   const Chatss({
//     super.key,
//     required this.currentMode,
//     required this.onThemeChanged,
//   });
//
//   @override
//   State<Chatss> createState() => _ChatssState();
// }
//
// class _ChatssState extends State<Chatss> {
//   late ThemeMode tempMode;
//   String _order = "System default";
//   String _medium = "Medium";
//   int m=1;
//   bool k=false;
//   bool l=false;
//   bool d=false;
//   bool w=false;
//
//   @override
//   void initState() {
//     super.initState();
//     tempMode = widget.currentMode;
//     _order = _getThemeName(widget.currentMode);
//     _medium = _getFontName(widget.currentMode);
//   }
//
//   String _getThemeName(ThemeMode mode) {
//     switch (mode) {
//       case ThemeMode.light:
//         return "Light";
//       case ThemeMode.dark:
//         return "Dark";
//       case ThemeMode.system:
//       default:
//         return "System default";
//     }
//   }
//   List <int> numb=[];
//   String _getFontName(numb) {
//     switch (numb) {
//       case 1 :
//         return  "Small";
//       case 2:
//         return "Medium";
//       case 3:
//         return "Large";
//       default:
//         return "Medium";
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           toolbarHeight: 60,
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(Icons.arrow_back_sharp, color: Colors.white),
//             ),
//             SizedBox(width: 10),
//             Text(
//               'Chats',
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 25,
//                 color: Colors.white,
//               ),
//             ),
//             Spacer(),
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.03)),),
//               SizedBox(height: 5,),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                 child: Text("Display"),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 12.0),
//                 child: ListTile(
//                   onTap: () async {
//                     await showDialog<ThemeMode>(
//                       context: context,
//                       builder: (context) {
//                         ThemeMode localTempMode = tempMode;
//
//                         return StatefulBuilder(
//                           builder: (context, setState) {
//                             return AlertDialog(
//                               title: Text("Choose theme"),
//                               content: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: ThemeMode.values.map((mode) {
//                                   return RadioListTile<ThemeMode>(
//                                     value: mode,
//                                     groupValue: localTempMode,
//                                     activeColor: Colors.greenAccent,
//                                     title: Text(_getThemeName(mode)),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         localTempMode = val!;
//                                       });
//                                     },
//                                   );
//                                 }).toList(),
//                               ),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: Text(
//                                     "Cancel",
//                                     style: TextStyle(color: Colors.greenAccent),
//                                   ),
//                                 ),
//                                 SizedBox(width: 25),
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.pop(context, localTempMode);
//                                   },
//                                   child: Text(
//                                     "Save",
//                                     style: TextStyle(color: Colors.greenAccent),
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                     ).then((value) {
//                       if (value != null) {
//                         widget.onThemeChanged(value); // Update theme mode
//                         setState(() {
//                           tempMode = value;
//                           _order = _getThemeName(value);
//                         });
//                       }
//                     });
//                   },
//                   leading: Icon(Icons.sunny),
//                   minLeadingWidth: 35,
//                   title: Text("Theme"),
//                   subtitle: Text(_order),
//                 ),
//               ),
//               ListTile(
//                 onTap: (){},
//                 leading: IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.color_lens_outlined),
//                 ),
//                 title: Text("Default chat theme"),
//               ),
//               Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.03)),),
//               Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Text("Chat settings"),
//               ),
//               ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black12,
//                 ),
//                 title: Text("Enter is send"),
//                 subtitle: Text("Enter key will send your message"),
//                 trailing: Switch(
//                     value: l,
//                     activeColor: Colors.black,
//                     activeTrackColor: Colors.green[400] ,
//                     onChanged: (val)
//                 {
//                   setState(() {
//                     l=val;
//                   });
//                 }),
//               ),
//
//               ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black12,
//                 ),
//                 title: Text("Media visibility"),
//                 subtitle: Text("Show newly downloaded media in your device's gallery"),
//                 trailing: Switch(
//                     value: k,
//                     activeColor: Colors.black,
//                     activeTrackColor: Colors.green[400] ,
//                     onChanged: (val)
//                 {
//                   setState(() {
//                     k=val;
//                   });
//                 }),
//               ),
//               ListTile(
//                 onTap: () async {
//                   await showDialog<ThemeMode>(
//                     context: context,
//                     builder: (context) {
//                       ThemeMode localTempMode = tempMode;
//
//                       return StatefulBuilder(
//                         builder: (context, setState) {
//                           List local=numb;
//                           return AlertDialog(
//                             title: Text("Font size"),
//                             content: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [1, 2, 3].map((fontSize) {
//                                 return RadioListTile<int>(
//                                   value: fontSize,
//                                   groupValue: m,
//                                   activeColor: Colors.greenAccent,
//                                   title: Text(_getFontName(fontSize)),
//                                   onChanged: (val) {
//                                     setState(() {
//                                       m = val!;
//                                     });
//                                     Navigator.pop(context);
//                                   },
//                                 );
//                               }).toList(),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ).then((value) {
//                     if (value != null) {
//                       widget.onThemeChanged(value); // Update theme mode
//                       setState(() {
//                         tempMode = value;
//                         _order = _getFontName(numb);
//                       });
//                     }
//                   });
//                 },
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black12,
//                 ),
//                 title: Text("Font size"),
//                 subtitle: Text("Medium"),
//               ),
//               ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black12,
//                 ),
//                 title: Text("Voice message transcripts"),
//                 subtitle: Text("Read new voice messages"),
//                 trailing: Switch(
//                     value: d,
//                     activeColor: Colors.black,
//                     activeTrackColor: Colors.green[400] ,
//                     onChanged: (val)
//                 {
//                   setState(() {
//                     d=val;
//                   });
//                 }),
//               ),
//               Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.03)),),
//               SizedBox(height: 5,),
//               Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Text(" Archived chats"),
//               ),
//
//               ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black12,
//                 ),
//                 title: Text("Keep chats archived"),
//                 subtitle: Text("Archived chats will remain archived when you recieve a new message"),
//                 trailing: Switch(
//                     value: w,
//                     activeColor: Colors.black,
//                     activeTrackColor: Colors.green[400] ,
//                     onChanged: (val)
//                     {
//                       setState(() {
//                         w=val;
//                       });
//                     }),
//               ),
//               SizedBox(height: 5,),
//               Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.03)),),
//               SizedBox(height: 5,),
//               ListTile(
//                 onTap: (){},
//                 leading: IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.cloud_upload_outlined),
//                 ),
//                 title: Text("Chat backup"),
//               ),
//               ListTile(
//                 onTap: (){},
//                 leading:IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.send_to_mobile_outlined),
//                 ),
//                 title: Text("Transfer chats"),
//               ),
//               ListTile(
//                 onTap: (){},
//                 leading:IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.settings_backup_restore_rounded),
//                 ),
//                 title: Text("Chat history"),
//
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';

class Chatss extends StatefulWidget {
  const Chatss({super.key});

  @override
  State<Chatss> createState() => _ChatssState();
}

class _ChatssState extends State<Chatss> {
  late ThemeMode tempMode;
  String _themeLabel = "System default";
  String _fontLabel = "Medium";
  int selectedFontSize = 2;

  bool mediaVisibility = false;
  bool enterIsSend = false;
  bool transcripts = false;
  bool keepArchived = false;

  final themeController = Get.find<ThemeController>();

  @override
  void initState() {
    super.initState();
    tempMode = themeController.themeMode.value;
    _themeLabel = _getThemeName(tempMode);
    _fontLabel = _getFontName(selectedFontSize);
  }

  String _getThemeName(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return "Light";
      case ThemeMode.dark:
        return "Dark";
      case ThemeMode.system:
      default:
        return "System default";
    }
  }

  String _getFontName(int value) {
    switch (value) {
      case 1:
        return "Small";
      case 2:
        return "Medium";
      case 3:
        return "Large";
      default:
        return "Medium";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          toolbarHeight: 60,
          actions: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_sharp,),
            ),
            const SizedBox(width: 10),
            const Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25,),
            ),
            const Spacer(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(color: Colors.white.withOpacity(0.03)),
              sectionTitle("Display"),
              ListTile(
                onTap: () async {
                  ThemeMode? selectedMode = await showDialog<ThemeMode>(
                    context: context,
                    builder: (context) {
                      ThemeMode localMode = tempMode;
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: const Text("Choose theme"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: ThemeMode.values.map((mode) {
                                return RadioListTile<ThemeMode>(
                                  value: mode,
                                  groupValue: localMode,
                                  title: Text(_getThemeName(mode)),
                                  onChanged: (val) {
                                    setState(() {
                                      localMode = val!;
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Cancel", style: TextStyle(color: Colors.greenAccent)),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, localMode),
                                child: const Text("Save", style: TextStyle(color: Colors.greenAccent)),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );

                  if (selectedMode != null) {
                    themeController.changeTheme(selectedMode);
                    setState(() {
                      tempMode = selectedMode;
                      _themeLabel = _getThemeName(selectedMode);
                    });
                  }
                },
                leading: const Icon(Icons.sunny),
                title: const Text("Theme"),
                subtitle: Text(_themeLabel),
              ),
              const ListTile(
                leading: Icon(Icons.color_lens_outlined),
                title: Text("Default chat theme"),
              ),
              Divider(color: Colors.white.withOpacity(0.03)),
              sectionTitle("Chat settings"),
              switchTile("Enter is send", "Enter key will send your message", enterIsSend, (val) {
                setState(() => enterIsSend = val);
              }),
              switchTile("Media visibility", "Show media in gallery", mediaVisibility, (val) {
                setState(() => mediaVisibility = val);
              }),
              ListTile(
                onTap: () async {
                  int? selectedFont = await showDialog<int>(
                    context: context,
                    builder: (context) {
                      int localFont = selectedFontSize;
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: const Text("Font size"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [1, 2, 3].map((size) {
                                return RadioListTile<int>(
                                  value: size,
                                  groupValue: localFont,
                                  title: Text(_getFontName(size)),
                                  onChanged: (val) {
                                    setState(() => localFont = val!);
                                  },
                                );
                              }).toList(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, localFont),
                                child: const Text("Save"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );

                  if (selectedFont != null) {
                    setState(() {
                      selectedFontSize = selectedFont;
                      _fontLabel = _getFontName(selectedFont);
                    });
                  }
                },
                leading: SizedBox(width: 25,),
                title: const Text("Font size"),
                subtitle: Text(_fontLabel),
              ),
              switchTile("Voice message transcripts", "Read voice messages", transcripts, (val) {
                setState(() => transcripts = val);
              }),
              Divider(color: Colors.white.withOpacity(0.03)),
              sectionTitle("Archived chats"),
              switchTile("Keep chats archived", "Archived chats stay archived", keepArchived, (val) {
                setState(() => keepArchived = val);
              }),
              Divider(color: Colors.white.withOpacity(0.03)),
              const ListTile(
                leading: Icon(Icons.cloud_upload_outlined),
                title: Text("Chat backup"),
              ),
              const ListTile(
                leading: Icon(Icons.send_to_mobile_outlined),
                title: Text("Transfer chats"),
              ),
              const ListTile(
                leading: Icon(Icons.settings_backup_restore_rounded),
                title: Text("Chat history"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ),
  );

  Widget switchTile(String title, String subtitle, bool value, ValueChanged<bool> onChanged) {
    return ListTile(
      leading:  SizedBox(width: 25,),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: value,
        activeColor: Colors.black,
        activeTrackColor: Colors.green[400],
        onChanged: onChanged,
      ),
    );
  }
}


