import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import 'ProfilePic.dart';


class Profilepages extends StatefulWidget {
  const Profilepages({super.key});

  @override
  State<Profilepages> createState() => _ProfilepagesState();
}

class _ProfilepagesState extends State<Profilepages> {

  File? img;
  final picker = ImagePicker();
  int? cnt;
  int c=25;

  Future getdata() async {
    final pickerimage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickerimage != null) {
        img = File(pickerimage.path);
      }
    });
  }

  final _controller = TextEditingController();
  final emoji = TextEditingController();
  //final cam = ImagePicker();

  Future data() async {
    final pickerimages = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickerimages != null) {
        img = File(pickerimages.path);
      }
    });
  }

  void count() {
    setState(() {
      cnt = c - _controller.text.length;
    });
  }
  

  @override
  void initState() {
    super.initState();
    setState(() {
      count();
    });
  }

  @override
  Widget build(BuildContext context) {
    final height  =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;

    List<IconData> icon = [
      Icons.person_outline_rounded,
      Icons.info_outline_rounded,
      Icons.call,
      Icons.link
    ];
    List<String> titles = ['Name', 'About', 'Phone', 'Links',];
    List<String> sub = [
      "Deepak Raj",
      'LUCKY ~❤️',
      '+91 7095566055',
      'Add links'
    ];
    return SafeArea(
        child: Scaffold(backgroundColor: Color(0xFF0B1014),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF0B1014),
            toolbarHeight: 60,
            actions: [
              IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)
              ), SizedBox(width: 5,),
              Text('Profile', style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white),), Spacer(),
            ],
          ),
          body: Column(
            children: [
              Center(
                child: GestureDetector(
                  onTap: ()=>  Get.to( Profilepicss()),
                  child: Stack(
                    children: [
                      (img ==null) ?
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s' ),
                              fit: BoxFit.cover), shape: BoxShape.circle,
                        ) ,
                      ) : (img != null)?
                          ClipRRect(
                            borderRadius: BorderRadius.circular(125),
                            child: Image.file(img!,height: 180,width: 180,fit: BoxFit.cover,),
                          ) :
                      ClipRRect(
                        borderRadius: BorderRadius.circular(125),
                        child: Image.file(img!,height: 180,width: 180,fit: BoxFit.cover,),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: CircleAvatar(
                            child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      backgroundColor: Color(0xFF0B1014),
                                      builder: (context) {
                                        return Container(
                                          height: 200,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0,
                                                    top: 10,
                                                    right: 10),
                                                child: Row(
                                                  children: [
                                                    IconButton(onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                      icon: Icon(Icons.close,
                                                        color: Colors.grey,),),
                                                    Spacer(),
                                                    Text('Profile Photo',
                                                      style: TextStyle(
                                                          color: Colors.white),),
                                                    Spacer(),
                                                    IconButton(onPressed: () {},
                                                      icon: Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.grey,),),
                                                  ],
                                                ),
                                              ),
                                              Center(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        IconButton(onPressed: data,
                                                          icon: Icon(Icons.camera_alt_outlined),
                                                          color: Colors.green,),
                                                        SizedBox(height: 10,),
                                                        TextButton(onPressed: () {
                                                          (img == null)
                                                              ? Text("Camera not supported")
                                                              : Image.file(img!);
                                                        },
                                                            child: Text("Camera",
                                                              style: TextStyle(color: Colors.grey),)),
                                                      ],
                                                    ), SizedBox(width: 25,),
                                                    Column(
                                                      children: [
                                                        IconButton(
                                                          onPressed: getdata,
                                                          icon: Icon(Icons.image),
                                                          color: Colors.green,),
                                                        SizedBox(height: 10,),
                                                        TextButton(onPressed: () {
                                                          (img == null)
                                                              ? Text("Gallary not supported")
                                                              : Image.file(img!);
                                                        },
                                                            child: Text("Gallery",
                                                              style: TextStyle(color: Colors.grey),)),
                                                      ],
                                                    ), SizedBox(width: 25,),
                                                    Column(
                                                      children: [
                                                        IconButton(onPressed: () {

                                                        }, icon: Icon(Icons.face),
                                                          color: Colors.green,
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Text("Avatar",
                                                          style: TextStyle(color: Colors.grey),),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      });
                                },
                                icon: Icon(Icons.camera_alt_outlined)
                            ),
                            backgroundColor: Colors.green,
                          )
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: titles.length,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Color(0xFF0B1014),
                              context: context,
                              builder: (context) {
                                return Container(
                                 height: 450,
                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0,top: 20),
                                        child: Text("Enter Your name ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      ), SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          SizedBox(width: 20,),
                                          Container(
                                            width:280,
                                            child: TextField(
                                              style: TextStyle(color: Colors.white.withOpacity(0.3)),
                                              autocorrect: true,
                                              onChanged: (value) {
                                                setState(() {
                                                  count();
                                                });
                                              },
                                              controller: _controller,
                                              decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.greenAccent, width: 2, style: BorderStyle.solid),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.greenAccent, width: 2, style: BorderStyle.solid),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),SizedBox(width: 10,),
                                          Text("${cnt}",style:  TextStyle(color: Colors.white.withOpacity(0.3)),),SizedBox(width: 10,),
                                          IconButton(onPressed: (){
                                            emoji.clear();
                                          }, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.white.withOpacity(0.3),))
                                        ],
                                      ),
                                      Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(onPressed: (){
                                            _controller.clear();
                                        }, child: Text("Cancel",style: TextStyle(color: Colors.greenAccent),)),SizedBox(width: 25,),
                                          TextButton(
                                              onPressed: (){
                                            _controller.clear();
                                          }, child: Text("Save",style: TextStyle(color: Colors.greenAccent),)),SizedBox(width: 10,),
                                        ]
                                      )
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        leading: Icon(icon[index], color: Colors.grey),
                        title: Text(titles[index],
                            style: TextStyle(color: Colors.white,)),
                        subtitle: Text(
                            sub[index], style: TextStyle(color: Colors.grey,)),
                      ),
                    );
                  }),


            ],
          ),
        )
    );
  }
}
