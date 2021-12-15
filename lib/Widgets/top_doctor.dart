import 'package:flutter/material.dart';
import 'package:medical_association/Widgets/doctor_card.dart';

class TopDoctor extends StatefulWidget {
  
  const TopDoctor({ Key? key }) : super(key: key);

  @override
  _TopDoctorState createState() => _TopDoctorState();
}

class _TopDoctorState extends State<TopDoctor> {
  final List topDoctor = [
    {
      "userName": 'Dr. Bellamy N',
      "category":"Viralogist",
      "reviews":"⭐ 4.5 (135 reviews)",
      "photo": "assets/images/image_1.png",
    },
    {
      "userName": 'Dr. Mensah T',
      "category":"Oncologists",
      "reviews":"⭐ 4.5 (135 reviews)",
      "photo": "assets/images/image_2.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing:8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.89,
        ), 
        itemCount:topDoctor.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              print(index);
            },
            child: DoctorCard(
              text: topDoctor[index]['userName'], 
              category: topDoctor[index]['category'], 
              reviews: topDoctor[index]['reviews'], 
              assetPath: topDoctor[index]['photo']
            )
          );
        }
      ),
    );
  }
}