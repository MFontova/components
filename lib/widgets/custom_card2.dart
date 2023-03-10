import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key, required this.imageUrl, this.cardName});

  final String imageUrl;
  final String? cardName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.black.withOpacity(0.5),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/placeholder.jpg'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 200),
          ),
          if (cardName != null)
            Container(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(cardName!),
            )
        ],
      ),
    );
  }
}
