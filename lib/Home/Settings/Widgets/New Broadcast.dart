import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewBroadcasts extends StatefulWidget {
  const NewBroadcasts({super.key});

  @override
  State<NewBroadcasts> createState() => _NewBroadcastsState();
}

class _NewBroadcastsState extends State<NewBroadcasts> {
  int? h;int cnt=1;

    List<int> _index = [];
    bool hj = false;

    void ontaps(int index) {
      setState(() {
        if (_index.contains(index)) {
          _index.remove(index);
         // cnt--;
        } else {
          _index.add(index);
         // cnt++;
        }
        hj = _index.isNotEmpty;
      });
      print("Selected indices: $_index ");
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
        backgroundColor: Color(0xFF0B1014),
        appBar: AppBar(
          backgroundColor: Color(0xFF0B1014),
          actions: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_sharp, color: Colors.white,)
            ), SizedBox(width: 5,),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New broadcast',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 17,
                  ),
                ),
                Text(
                  " of ${title.length} selected",
                 style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
               (hj!)?
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
                              Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage: NetworkImage(img),
                                    ),
                                    Positioned(bottom: 5,right: 5,child: Icon(Icons.check))
                                  ] )
                              ,
                              Positioned(
                                right: 0.5,
                                bottom: 0.5,
                                child: GestureDetector(
                                  onTap: () {
                                    ontaps(index1);
                                  },
                                  child: CircleAvatar(backgroundColor: Colors.grey, radius: 10,child: Icon(Icons.close, color: Colors.black, size: 15)),
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
                              style: TextStyle(color: Colors.white, fontSize: 11),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                  ),
                ):

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Center(
                  child: Text('Only contacts with +91 7095566055 in their address book will recieve your broadcast messages.',
                    style: TextStyle(overflow: TextOverflow.ellipsis,color: Colors.grey,),maxLines: 2,textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(height: 15,),
              Container(height: 1,width: MediaQuery.of(context).size.width ,decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),),
              SizedBox(height: 10,),

              ListView.separated(
                itemCount: title.length ,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      if (index == title.length)
                        SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 12),
                        child:GestureDetector(
                          onTap: () {
                            ontaps(index);
                          },
                          child: Row(
                            children: [
                            // if (hj)
                              // Stack(
                              //   children: [
                              //    CircleAvatar(
                              //     backgroundImage: NetworkImage(imgs[index]),
                              //   ),
                              //     Positioned(
                              //       bottom: -1,
                              //       right: -1,
                              //       child: CircleAvatar(
                              //         radius: 10,
                              //         child: Icon(
                              //           Icons.check,
                              //           color: Colors.black,size: 13,
                              //         ),
                              //         backgroundColor: Colors.greenAccent,
                              //       ),
                              //     )
                              // ])
                              //     :
                              CircleAvatar(
                                backgroundImage: NetworkImage(imgs[index]),
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title[index],
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.9),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 2),
                                  SizedBox(
                                    width: 300,
                                    child: Text(
                                      subs[index],
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Color(0xFF666E71),
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
          onPressed: (){

          },
          child: Icon(Icons.arrow_forward,color: Colors.black,),),
      ),


    );
  }
}
