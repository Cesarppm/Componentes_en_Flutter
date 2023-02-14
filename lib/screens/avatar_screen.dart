import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.pink[900]
            ),
          )

        ],
        ),
      body:const  Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://i.blogs.es/a51c4b/mob-psycho-100/1366_2000.jpeg'),
         ),
      ),
    );
  }
}