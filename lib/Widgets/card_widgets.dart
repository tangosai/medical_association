import 'package:flutter/material.dart';

class CardWigets extends StatelessWidget {
  final String text;
  final String textSub;
  final String assetPath;
  const CardWigets({ Key? key, required this.text, required this.textSub, required this.assetPath }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,),
      ),
      child: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color:const Color(0xFFF2B01D),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image(
                    height: 60,
                    image: AssetImage(assetPath)
                  )
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: RichText(
              // ignore: prefer_const_constructors
              text: TextSpan(
                text:text,
                style: const TextStyle(color: Color(0xFF050735),fontWeight: FontWeight.bold,fontSize: 18),
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  TextSpan(
                    text:"\n" + textSub,
                    style: const TextStyle(color: Color(0xFFBAB8B8),fontWeight: FontWeight.w400,fontSize: 15)
                    ),]),)
                  ),
                const SizedBox(width: 10,),
              ],
            ),
            ),
          ],
      ),
    );
  }
}