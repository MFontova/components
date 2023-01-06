// import 'dart:html';

import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: ((context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          title: const Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 60,
              )
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'))
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (() => displayDialog(context)),
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
