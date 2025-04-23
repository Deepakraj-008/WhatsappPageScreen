import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../main.dart';

class InviteAfriend extends StatefulWidget {
  const InviteAfriend({super.key});

  @override
  State<InviteAfriend> createState() => _InviteAfriendState();
}

class _InviteAfriendState extends State<InviteAfriend> {
  ThemeMode _themeMode = ThemeMode.system;

  void _updateTheme(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }

  late ThemeMode tempMode;
  final themeController = Get.find<ThemeController>();

  @override
  void initState() {
    super.initState();
    tempMode = themeController.themeMode.value;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_sharp,)),
          Text('Invite a friend', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,
             ),),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
        
      ),
    )
    );
  }
}
