import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile( 
            leading:  Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Veniam eprehenderit isi reprehenderit. Irure tempor ut culpa do laborum dolore ad minim aliqua proident voluptate laboris fugiat. Proident ea id ipsum enim ullamco enim laboris sunt. Veniam fugiat enim consectetur sit.'),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: const Text('Calcel')
                    
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text('Ok'),
                  ),
                  
                  
                ],
                ),
            )
            
        ],
      ),
    );
  }
}