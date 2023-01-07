import 'package:components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 0,
            max: 500,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
          ),
          SwitchListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                  'https://static.wikia.nocookie.net/killbill/images/2/22/Elle_Driver.jpg',
                ),
                fit: BoxFit.fitWidth,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
