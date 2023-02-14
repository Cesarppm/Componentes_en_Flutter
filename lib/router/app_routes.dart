import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
      //TODO: borrar home
     // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
      MenuOption(route: 'listview1', name: 'listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_rounded),
      MenuOption(route: 'listview2', name: 'listview tipo 2 ', screen: const Listview2Screen(), icon: Icons.list_outlined),
      MenuOption(route: 'alerview', name: 'alertas', screen: const AlertScreen(), icon: Icons.alarm_add_outlined),
      MenuOption(route: 'cardview', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.card_giftcard_outlined),
      MenuOption(route: 'avatar', name: 'Circle avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
      MenuOption(route: 'animated', name: 'Animated Screen', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
      MenuOption(route: 'inputs', name: 'Inputs Screen', screen: const InputsScreen(), icon: Icons.input_rounded),
      MenuOption(route: 'slider', name: 'Slider Screen', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
      MenuOption(route: 'listviewbuilder', name: 'listviewBuilder Screen', screen: const ListviewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];
    
    static Map<String, Widget Function(BuildContext)> getAppRoutes(){

        Map<String, Widget Function(BuildContext)> appRoutes = {};
        appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
        for (final option in menuOptions){
          appRoutes.addAll({option.route : (BuildContext context) => option.screen});
        }

      return appRoutes;
    }

 // static  Map<String, Widget Function(BuildContext)> routes ={
 //       'home'     : (BuildContext contect) => const HomeScreen(),
 //       'listview1': (BuildContext context) => const Listview1Screen(),
 //       'listview2': (BuildContext context) => const Listview2Screen(),
 //       'alerview' : (BuildContext context) => const AlertScreen(),
 //       'cardview' : (BuildContext context) => const CardScreen()
 //     };

      static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) => const AlertScreen(),
            );
      }

}