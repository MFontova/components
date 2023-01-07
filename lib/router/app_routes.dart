import 'package:components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home_filled,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.face,
        name: 'List View 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.hail,
        name: 'List View 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.padding,
        name: 'Alerts',
        screen: AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Card',
        screen: CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Avatar',
        screen: AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Input Screens',
        screen: InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.social_distance_sharp,
        name: 'Slider Screen',
        screen: SliderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}
