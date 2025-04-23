import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../main.dart';

class Newgroupadd extends StatefulWidget {
  const Newgroupadd({super.key});

  @override
  State<Newgroupadd> createState() => _NewgroupaddState();
}

class _NewgroupaddState extends State<Newgroupadd> {
  List<int> _index = [];
  bool hj = false;

  void ontaps(int index) {
    setState(() {
      if (_index.contains(index)) {
        _index.remove(index);
      } else {
        _index.add(index);
      }
      hj = _index.isNotEmpty;
    });
    print("Selected indices: $_index");
  }


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
    List<String> titles = [
      'Deepak Raj',
      'Sunil sir',
      'Uday Kiran',
      'Office Prashanth Sir ( Head )',
      'Pranay Sir CEO (LDEV Company)',
    ];
    List<String> title = [
      'Deepak Raj',
      'Sunil sir',
      'Uday Kiran',
      'Office Prashanth Sir ( Head )',
      'Pranay Sir CEO (LDEV Company)',
      'Deepak Raj',
      'Sunil sir',
      'Uday Kiran',
      'Office Prashanth Sir ( Head )',
      'Pranay Sir CEO (LDEV Company)',
      'Deepak Raj',
      'Sunil sir',
      'Uday Kiran',
      'Office Prashanth Sir ( Head )',
      'Pranay Sir CEO (LDEV Company)',
    ];

    List<String> sub = [
      " ",
      'Nothing is Impossible in the world itselfs says \'I\'M Possible',
      '_________________________________',
      'Live not little , leave a bit ~ Prashanth Chowdary ',
      ' '
    ];

    List<String> subs = [
      " ",
      'Nothing is Impossible in the world itselfs says \'I\'M Possible',
      '_________________________________',
      'Live not little , leave a bit ~ Prashanth Chowdary ',
      ' ',
      " ",
      'Nothing is Impossible in the world itselfs says \'I\'M Possible',
      '_________________________________',
      'Live not little , leave a bit ~ Prashanth Chowdary ',
      ' ',
      " ",
      'Nothing is Impossible in the world itselfs says \'I\'M Possible',
      '_________________________________',
      'Live not little , leave a bit ~ Prashanth Chowdary ',
      ' ',
    ];

    List<String> imgs = List.filled(
      15,
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s',
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_sharp, ),
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New group',
                  style: TextStyle( fontSize: 17),
                ),
                Text(
                  'Add members',
                  style: TextStyle( fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              if (hj)
                Container(height: 1, ),
              if(hj)
              SizedBox(height: 8),
                if(hj)
                Container(
                  height: 80,
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _index.length,
                    itemBuilder: (context, index) {
                      int index1 = _index[index];
                      String name = index1 < titles.length
                          ? titles[index1]
                          : title[index1 - titles.length];
                      String img = imgs[index1];
                      return Column(
                        children: [
                          Stack(
                            children: [
                              if(hj)
                              Stack(
                                children: [
                                 CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(img),
                                ),
                                  Positioned(bottom: 5,right: 5,child: Icon(Icons.check))
                             ] ) ,CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(img),
                              )
                              ,
                              Positioned(
                                right: 0.5,
                                bottom: 0.5,
                                child: GestureDetector(
                                  onTap: () {
                                    ontaps(index1);
                                  },
                                  child: CircleAvatar( radius: 10,child: Icon(Icons.close,  size: 15)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: 60,
                            child: Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle( fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                  ),
                ),

              ListView.separated(
                itemCount: titles.length + title.length,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  bool list1 = index < titles.length;
                  String titless = list1 ? titles[index] : title[index - titles.length];
                  String subtitle = list1 ? sub[index % sub.length] : subs[index % subs.length];
                  String imagess = imgs[index % imgs.length];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (list1 && index == 0) ...[
                        Container(height: 1,),
                        SizedBox(height: 8),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 5),
                          child: Text("Frequently contacted", style: TextStyle()),
                        ),
                        SizedBox(height: 8),
                      ],
                      if (!list1 && index == titles.length) ...[
                        Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 5),
                          child: Text("Contacts on WhatsApp", ),
                        ),
                        SizedBox(height: 8),
                      ],
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 12),
                        child: GestureDetector(
                          onTap: () {
                            ontaps(index);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(imagess),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    titless,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                      subtitle,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.arrow_forward, color: Theme.of(context).scaffoldBackgroundColor,),
        ),
      ),
    );
  }
}
