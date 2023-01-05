import 'package:components/router/app_routes.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: ((context, i) => ListTile(
                  title: Text(AppRoutes.menuOptions[i].name),
                  leading: Icon(AppRoutes.menuOptions[i].icon),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[i].route);
                  },
                )),
            separatorBuilder: ((context, index) => Divider()),
            itemCount: AppRoutes.menuOptions.length));
  }
}
