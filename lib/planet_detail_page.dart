import 'package:flutter/material.dart';

class PlanetDetailPage extends StatelessWidget {
  final Map<String, String> planet;

  PlanetDetailPage({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: planet['name']!,
              child: Image.asset(
                planet['image']!,
                width: 250,
                height: 250,
              ),
            ),
            SizedBox(height: 20),
            Text(
              planet['name']!,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              planet['description']!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
