import 'package:flutter/material.dart';

class CategoryWidgets extends StatefulWidget {
  const CategoryWidgets({ Key? key }) : super(key: key);

  @override
  _CategoryWidgetsState createState() => _CategoryWidgetsState();
}

class _CategoryWidgetsState extends State<CategoryWidgets> {
  final List storyItems = [
    {
      "userName": 'Kidenys',
      "photo": "assets/images/kedney.png",
    },
    {
      "userName": 'Lungs',
      "photo": "assets/images/lungs.png",
    },
    {
      "userName": 'Bones',
      "photo": "assets/images/bones.png",
    },
    {
      "userName": 'Brains',
      "photo": "assets/images/brains.png",
    },
    {
      "userName": 'Stomach',
      "photo": "assets/images/stomach.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
       height: 135,
      //  color:Colors.black45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyItems.length,
        itemBuilder: (context, index){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              const SizedBox(height: 8,),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                   border: Border.all(width: 1,),
                   borderRadius: BorderRadius.circular(500),
                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(255,94,3,0.1),
                    //  border: Border.all(width: 1,),
                  ),
                  child: Image.asset(storyItems[index]['photo'],height: 45,)
                ),
              ),
              const SizedBox(height: 5,),
              Text(storyItems[index]['userName'], style: const TextStyle(
                fontSize:15,fontWeight: FontWeight.w400,color: Color(0xFF223263)
              )  )
            ]
          );
        }
      ),
    );
  }
}