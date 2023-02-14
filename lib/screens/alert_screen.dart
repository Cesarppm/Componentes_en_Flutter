

import 'dart:io';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
      showCupertinoDialog(
        context: context, 
        builder: (context){
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const  [
            Text('Este es un contenido de alerta'),
            SizedBox( height: 10),
            FlutterLogo(size: 100)
          ],
          ),
           actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Ok', style: TextStyle(color: Colors.blue),)
              ),
              TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
              )
           ],
           
          );
        }
        );
  }
  void  displayDialogAndroid( BuildContext context){
    
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){

      return AlertDialog(
        elevation: 5,
        title: const Text('Titulo'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(35)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const  [
            Text('Este es un contenido de alerta'),
            SizedBox( height: 10),
            FlutterLogo(size: 100)
          ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('OK',style: TextStyle(color: Colors.blue),)
              ),
              TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar', style: TextStyle(color: Colors.red),)
              )
          ],

      );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.indigo,
        //     shape: const StadiumBorder(),
        //   ),
        
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child:  Text ('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          //onPressed: ()=> displayDialogAndroid(context),
          onPressed: ()=> Platform.isAndroid 
          ? displayDialogAndroid(context)
          : displayDialogIOS(context)
          

          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child : const Icon(Icons.close),
         onPressed:() => Navigator.pop(context),
         ),
    );
  }
}