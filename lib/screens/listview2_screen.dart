import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Metal Gear Solid',
    'GTA V',
    'The Last Of Us',
    'Dark Souls'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) =>
              ListTile(title: Text(options[index])),
          itemCount: options.length,
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
