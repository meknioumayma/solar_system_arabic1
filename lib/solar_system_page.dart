import 'package:flutter/material.dart';

class SolarSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'النظام الشمسي يتكون من الشمس وجميع الأجرام السماوية التي تدور حولها بما في ذلك الكواكب والأقمار والكويكبات.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
