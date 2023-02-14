import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text ('Card Widget'),
      ),
      body: ListView(
        
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),

        children: const [  
          CustomCardType1(),
          SizedBox(height: 15,),
          CustomCardType2(name: 'The Mandaloriano', imageUrl: 'https://m.media-amazon.com/images/I/91tEjUsZusL.jpg',),
          SizedBox(height: 15,),
          CustomCardType2(name:'mob psycho', imageUrl: 'https://i.blogs.es/21ded5/mob-psycho-100/1366_2000.jpeg',),
          SizedBox(height: 15,),
          CustomCardType2(name: 'Batman', imageUrl: 'https://www.comicverso.com/wp-content/uploads/2021/02/imagen-destacada-2.jpg',),
          SizedBox(height: 15,),
          CustomCardType2(name: 'Star Wars',imageUrl: 'https://i.blogs.es/1da08b/1366_2000-9-/1366_2000.jpeg',),
          SizedBox(height: 15,),
          CustomCardType2(name: 'Jedi Survivor',imageUrl: 'https://cdn1.epicgames.com/offer/5a2ea5980ac147c195775039195a3081/EGS_STARWARSJediSurvivorStandardEdition_RespawnEntertainment_S1_2560x1440-f9e8bb0209bb9ec26636838fbc3dcd85',),
          
        ],
      )
    );
  }
}

