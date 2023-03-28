import 'package:flutter/material.dart';


class circleIcon extends StatelessWidget {
  final String imagePath;
  
  const circleIcon({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
         radius: 28,
        backgroundColor: Colors.white,
        
        // child: ElevatedButton
        // (onPressed: (){},
        //  style: ElevatedButton.styleFrom(
        //     shape: const CircleBorder(), 
        //     padding: const EdgeInsets.all(30)),
        //   child: Image.asset(
        //   imagePath,
        //   height: 50,
        // ),),  

        child: IconButton(
          icon: Image.asset(imagePath, height: 100),
          iconSize: 100,
          splashRadius: 35,
          color: Colors.transparent,
          onPressed: () {},
        ),

      );
      
    
  }
}