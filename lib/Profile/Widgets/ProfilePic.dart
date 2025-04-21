import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'ProfilePage.dart';

class Profilepicss extends StatefulWidget {
  const Profilepicss({super.key});

  @override
  State<Profilepicss> createState() => _ProfilepicssState();
}

class _ProfilepicssState extends State<Profilepicss> {

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
              Text('Profile Photo', style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.white),), Spacer(),
              IconButton(onPressed: () {
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

              }, icon: Icon(Icons.edit_outlined, color: Colors.white,)
              ), SizedBox(width: 5,),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.share_outlined, color: Colors.white,)
              ), SizedBox(width: 5,),
            ],
          ),
          body: Center(
            child: Stack(children: [
              (img ==null) ?
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s' ),
                      fit: BoxFit.cover), shape: BoxShape.rectangle,
                ) ,
              ) : (img != null)?
              ClipRRect(
                child: Image.file(img!,
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,),
              ) :
              ClipRRect(
                child: Image.file(img!,
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,),
              ),
            ],),
          )
    ));
  }
}
