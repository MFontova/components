import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              min: 0,
              max: 500,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: (value) {
                print(value);
                _sliderValue = value;
                setState(() {});
              },
            ),
            Image(
              image: NetworkImage(
                'https://static.wikia.nocookie.net/killbill/images/2/22/Elle_Driver.jpg',
              ),
              fit: BoxFit.fitWidth,
              width: _sliderValue,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
