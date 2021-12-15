import 'package:flutter/material.dart';
import 'package:medical_association/Pages/home_screen.dart';
import 'package:medical_association/Widgets/doctor_card.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({ Key? key }) : super(key: key);

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
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
      "reviews":"⭐ 4.3 (130 reviews)",
      "photo": "assets/images/image_2.png",
    },
    {
      "userName": 'Dr. Klimisch J',
      "category":"Surgeon",
      "reviews":"⭐ 4.5 (135 reviews)",
      "photo": "assets/images/image_3.png",
    },
    {
      "userName": 'Dr. Martinez K',
      "category":"Pediatrician",
      "reviews":"⭐ 4.3 (130 reviews)",
      "photo": "assets/images/image_4.png",
    },
    {
      "userName": 'Dr. Boyle J',
      "category":"Radiologists",
      "reviews":"⭐ 4.5 (135 reviews)",
      "photo": "assets/images/image_5.png",
    },
    {
      "userName": 'Dr. Marc M',
      "category":"Surgical Oncology",
      "reviews":"⭐ 4.3 (130 reviews)",
      "photo": "assets/images/image_6.png",
    },
    {
      "userName": 'Dr. Smith N',
      "category":"Viralogist",
      "reviews":"⭐ 4.3 (130 reviews)",
      "photo": "assets/images/image_7.png",
    },
    {
      "userName": 'Dr. John T',
      "category":"Oncologists",
      "reviews":"⭐ 4.3 (130 reviews)",
      "photo": "assets/images/image_8.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Doctors",style: TextStyle(color: Color(0xFF222B45))),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen() ), (route) => false);
          }, 
          icon: const Icon(Icons.arrow_back,color: Color(0xFF222B45))
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          // color:Colors.black,
          
          child: GridView.builder(
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing:8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.8,
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
          ),
      ),
    );
  }
}