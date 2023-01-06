import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage(
                'https://media.posterlounge.com/images/big/1878321.jpg'),
            placeholder: AssetImage('assets/images/placeholder.jpg'),
          )
        ],
      ),
    );
  }
}
