import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() {}),
          child: const Text('Mostrar Alerta'),
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.green, shape: const StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          child: const Icon(Icons.close)),
    );
  }
}
