import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Accountss extends StatefulWidget {
  const Accountss({super.key});

  @override
  State<Accountss> createState() => _AccountssState();
}

class _AccountssState extends State<Accountss> {
  List<IconData> icon = [
    Icons.security,
    Icons.person_outline_rounded,
    Icons.email_outlined,
    Icons.password,
    Icons.send_to_mobile_outlined,
    Icons.receipt_outlined,
    Icons.person_add_alt_outlined,
    Icons.delete_outline,
  ];
  List<String> titles = ['Security notification', 'Passkeys', 'Email address', 'Two-step verification',
    'Change number','Request account info','Add account','Delete account'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
          Text('Account', style: TextStyle(fontWeight: FontWeight.w400,
              fontSize: 25,
              color: Colors.white),),
          Spacer(),

        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: titles.length,
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: Icon(icon[index], color: Colors.grey),
                  title: Text(titles[index],
                      style: TextStyle(color: Colors.white,)),

                ),
              );
            }),
      ),
    )
    );
  }
}
