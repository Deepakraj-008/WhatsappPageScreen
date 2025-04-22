import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Linkeddevicess extends StatefulWidget {
  const Linkeddevicess({super.key});

  @override
  State<Linkeddevicess> createState() => _LinkeddevicessState();
}

class _LinkeddevicessState extends State<Linkeddevicess> {
  @override
  Widget build(BuildContext context) {
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
              Text('Linked devices', style: TextStyle(fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.white),), Spacer(),
            ],
          ),
          body: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 103,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Linkeddevice.png'),colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Use WhatsApp \n on other devices ',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                ),textAlign: TextAlign.center,
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 25),
                child: RichText(
                  text: TextSpan(
                    text: "You can link other devices to this account, including Windows, Mac, and Web.",
                    style: TextStyle( color: Colors.white.withOpacity(0.5),fontSize: 13),
                    children: [
                      TextSpan(
                          text: " Learn more",
                          style: TextStyle(
                              color: Colors.lightBlue[300],
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ]
                  ),textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Container(
                width: 340,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Link a device",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent[700]
                    )
                  ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 20),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_outline,size: 12,color: Colors.white.withOpacity(0.5),),
                    SizedBox(width: 8,),
                    Flexible(
                      child: RichText(
                        text:TextSpan(
                        text: "Your personal messages are ",
                        children: [
                          TextSpan(
                            text: "end-to-end encrypted",
                            style: TextStyle(
                              color: Colors.greenAccent[400],
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12
                            ),
                          ),
                          TextSpan(
                            text: " on all your devices.",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              overflow: TextOverflow.ellipsis,
                                fontSize: 12
                            ),
                          ),
                        ],
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            overflow: TextOverflow.ellipsis,
                              fontSize: 12
                      ),
                      ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow:TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
