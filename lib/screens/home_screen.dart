import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => ListTile(
                  title: Text('Nombre de ruta'),
                  leading: Icon(Icons.access_time_filled),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());
                    // Navigator.push(context, route);

                    Navigator.pushNamed(context, 'card');
                  },
                )),
            separatorBuilder: ((context, index) => Divider()),
            itemCount: 10));
  }
}
