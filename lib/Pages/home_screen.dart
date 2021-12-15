import 'package:flutter/material.dart';
import 'package:medical_association/Pages/doctor_screen.dart';
import 'package:medical_association/Widgets/card_widgets.dart';
import 'package:medical_association/Widgets/category.dart';
import 'package:medical_association/Widgets/doctor_card.dart';
import 'package:medical_association/Widgets/top_doctor.dart';
import 'package:medical_association/Widgets/upcoming.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png',height: 45,),
        actions:[
          // IconButton(
          //   onPressed: (){}, 
          //   icon: const Icon(Icons.shopping_cart_outlined,color: Color(0xFFFF5E03),)
          // ),
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.notifications_outlined,color: Color(0xFFFF5E03))
          )
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: const Color(0xFFFF6600),
        unselectedItemColor: Colors.grey.shade500,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_today ), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline ), label: "Home"),
             BottomNavigationBarItem(icon: Icon(Icons.account_circle ), label: "Home"),
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Hello, Yehor",style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w500,
                color:Color(0xFF223263)
              ) ),
              const SizedBox(height:5),
              const Text("Always caring about your health, we are here to help you!",style:TextStyle(color:Colors.blue)),
              const SizedBox(height:20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search for doctor, labs, etc..",
                   // labelText:"Phone Number",
                   counterText: "",
                   border: InputBorder.none
                   ),
                ),
              ),
              const SizedBox(height:20),
              const Text("Category",style: TextStyle(
                fontWeight: FontWeight.w600,fontSize:20,
                color: Color(0xFF223263)
              ) ),
              const SizedBox(height:5),
              const CategoryWidgets(),
              const SizedBox(height:20),
              const Text("Upcoming Appointment ",style: TextStyle(
                fontWeight: FontWeight.w600,fontSize:20,
                color: Color(0xFF223263)
              ) ),
              const SizedBox(height:8),
              const Upcoming(),
              const SizedBox(height:20),
              Row(
                children: [
                  const Text("Top Doctor ",style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize:20,
                    color: Color(0xFF223263)
                  ) ),
                  Expanded(child: Container()),
                  MaterialButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const DoctorScreen() ), (route) => false);
                    },
                    child: const Text("View All ",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize:15,
                      color: Color(0xFF6B779A)
                    ) ),
                  ),
                ],
              ),
              const SizedBox(height:20),
              const TopDoctor()
              // const CardWigets(text: "Dr. Marc M", textSub: "Surgical Oncology", color: Color(0xFFF2B01D), assetPath: 'assets/images/image_6.png'),
            ],
          ),
        ),
      ),
    );
  }
}