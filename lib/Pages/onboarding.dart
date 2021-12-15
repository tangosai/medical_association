import 'package:flutter/material.dart';
import 'package:medical_association/Pages/home_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({ Key? key }) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
    final List<List<String>> products = [
    [
      'assets/images/image-1.png',
      'The best',
      'Specialists',
      'Treatment from the best specialists from around the world'
    ],
    [
      'assets/images/image-2.png',
      'The best',
      'Specialists',
      'Treatment from the best specialists from around the world'
    ],
    [
      'assets/images/image-3.png',
      'The best',
      'Specialists',
      'Treatment from the best specialists from around the world'
    ],
    [
      'assets/images/image-4.png',
      'The best',
      'Specialists',
      'Treatment from the best specialists from around the world'
    ]
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length -1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          // ignore: avoid_unnecessary_containers
          Container(
            child: GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    _preve();
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    _next();
                  }
                },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(products[currentIndex][0]),
                    fit: BoxFit.cover,
                  )
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                      stops: [0.3,0.9],
                      colors: [
                        Color.fromRGBO(5,7,53,0.9),
                        Color.fromRGBO(0,0,0,0)
                      ]
                    )
                  ),
                ),
              ),
            ),
          ),
          
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(products[currentIndex][1],style:const TextStyle(fontSize: 25,color: Colors.white)),
                const SizedBox(height: 5),
                Text(products[currentIndex][2],style:const TextStyle(fontSize: 50,color: Colors.white)),
                const SizedBox(height: 5),
                Text(products[currentIndex][3],style:const TextStyle(fontSize: 15,color: Colors.white)),
                const SizedBox(height: 10),
                Row(
                  children: _buildIndicator(),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen() ), (route) => false);
                  },
                  minWidth: double.infinity,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  color: const Color(0xFFFF5E03),
                  child: const Text("Get Started",style: TextStyle(color: Colors.white,)),
                ),
                const SizedBox(height: 10),
                
              ],
            ),
          )
        ]
      )
    );
  }
  Widget _indicator(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isActive ? const Color(0xFFFF5E03) : Colors.white
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for(int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}