import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String text;
  final String category;
  final String reviews;
  final String assetPath;
  const DoctorCard({ Key? key, required this.text, required this.category, required this.reviews, required this.assetPath }) : super(key: key);

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1,),
      ),
      child: Column(
        children:[
          Image.asset(widget.assetPath,height: 80,),
          const SizedBox(height:8),
          Text(widget.text,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color:Color(0xFF222B45))),
          const SizedBox(height:10),
          Text(widget.category,style:const TextStyle(color:Color(0xFF6B779A))),
          const SizedBox(height:2),
          Text(widget.reviews,style:const TextStyle(color:Color(0xFF6B779A))),
        ]
      ),
    );
  }
}