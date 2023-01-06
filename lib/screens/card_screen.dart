import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            OfferCard(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl: 'https://media.posterlounge.com/images/big/1878321.jpg',
              cardName: 'Kill Bill',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://i.blogs.es/49c46d/pulp-fiction-1/1366_2000.jpg',
              cardName: 'Pulp Fiction',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://pics.filmaffinity.com/Reservoir_Dogs-285426994-large.jpg',
              // cardName: 'Reservoir Dogs',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
