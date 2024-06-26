import 'package:flutter/material.dart';
import 'package:sneakershop/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(5.0),
          child:Image.asset('lib/images/sneaker1.jpg',
          //color: Colors.white,
          height: 500,),
          ),
          const SizedBox(height: 10),

         const Text('Just Do It',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          const SizedBox(height: 48),
            const Text('Made With Great Quality',style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
          ),
           const SizedBox(height: 48),

           GestureDetector(
             onTap: () => Navigator.push(context, 
             MaterialPageRoute(builder: 
             (context) => const HomePage())),
             child: Container(
             decoration: BoxDecoration(
               color: Colors.grey[900],
               borderRadius: BorderRadius.circular(12)
             ),
             padding: const EdgeInsets.all(25),
             child:const Center(child: Text(
               'Shop Now',
             style: TextStyle(color: Colors.white,
             fontSize: 16,
             fontWeight: FontWeight.bold
             ),
             ),
             
           )
           ),
           )

           
         
        ],)

    );
  }
}