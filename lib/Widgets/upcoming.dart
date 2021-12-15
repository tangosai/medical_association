import 'package:flutter/material.dart';
import 'package:medical_association/Widgets/card_widgets.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({ Key? key }) : super(key: key);

  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  final List upcomingList = [
    {
      "userName": 'Dr. Marc M',
      "teSub":"Surgical Oncology",
      "photo": "assets/images/image_6.png",
    },
    {
      "userName": 'Dr. Martinez K',
      "teSub":"Pediatriciany",
      "photo": "assets/images/image_4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
    return Container(
      // height: 200,
      // color:Colors.black,
      child: GridView.builder(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing:0,
          crossAxisSpacing: 1,
          childAspectRatio: 35/10,
        ),
        itemCount:upcomingList.length,
        itemBuilder: (context,index){
          return  CardWigets(
            text: upcomingList[index]['userName'], 
            textSub: upcomingList[index]['teSub'], 
            assetPath: upcomingList[index]['photo']
            );
        }
      )
    );
  }
}