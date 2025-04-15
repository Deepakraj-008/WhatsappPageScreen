import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepages extends StatefulWidget {
  const Profilepages({super.key});

  @override
  State<Profilepages> createState() => _ProfilepagesState();
}

class _ProfilepagesState extends State<Profilepages> {

  @override
  Widget build(BuildContext context) {
    final _controller=TextEditingController();
    List<IconData> icon=[Icons.person_outline_rounded, Icons.info_outline_rounded,Icons.call,Icons.link];
    List<String> titles=['Name','About','Phone','Links',];
    List<String> sub=["Deepak Raj",'LUCKY ~❤️','+91 7095566055','Add links'];
    return SafeArea(
        child: Scaffold(  backgroundColor: Color(0xFF0B1014),
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
                  color: Colors.white),),Spacer(),
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCsqRYLAFDdL4Ix_AHai7kNVyoPV9Ssv1xg&s',),
                          fit: BoxFit.cover),shape: BoxShape.circle,
                    ),

                  ),
                    Positioned(
                      bottom: 10,
                        right: 10,
                        child: CircleAvatar(
                          child: IconButton(
                              onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: Color(0xFF0B1014),
                              builder: (context)
                          {
                            return Container(
                              height: 200,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,top: 10,right: 10),
                                    child: Row(
                                      children: [
                                        IconButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, icon: Icon(Icons.close,color: Colors.grey,),),
                                        Spacer(),
                                        Text('Profile Photo',style: TextStyle(color: Colors.white),),
                                        Spacer(),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Colors.grey,),),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(onPressed: ()
                                              {

                                              },icon: Icon(Icons.camera_alt_outlined),color: Colors.green,),
                                            SizedBox(height: 10,),
                                            Text("Camera",style: TextStyle(color: Colors.grey),),
                                          ],
                                        ),
                                        SizedBox(width: 25,),
                                        Column(
                                          children: [
                                            IconButton(onPressed: ()
                                            {

                                            },icon: Icon(Icons.image),color: Colors.green,),
                                            SizedBox(height: 10,),
                                            Text("Gallery",style: TextStyle(color: Colors.grey),),
                                          ],
                                        ),SizedBox(width: 25,),
                                        Column(
                                          children: [
                                            IconButton(onPressed: ()
                                            {

                                            },icon: Icon(Icons.face),
                                              color: Colors.green,
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Avatar",style: TextStyle(color: Colors.grey),),
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


            ],
          ),
    )
    );
  }
}
