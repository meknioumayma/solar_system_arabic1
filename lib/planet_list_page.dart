import 'package:flutter/material.dart';
import 'planet_detail_page.dart';

class PlanetListPage extends StatefulWidget {
  @override
  _PlanetListPageState createState() => _PlanetListPageState();
}

class _PlanetListPageState extends State<PlanetListPage> {
  // Liste des planètes avec des informations
  final List<Map<String, String>> planets = [
    {'name': 'عطارد', 'image': 'assets/images/mercury.png', 'description': 'أقرب كوكب إلى الشمس.'},
    {'name': 'الزهرة', 'image': 'assets/images/venus.png', 'description': 'ثاني كوكب من الشمس ويمتلك جو كثيف.'},
    {'name': 'الأرض', 'image': 'assets/images/earth.png', 'description': 'الكوكب الوحيد المعروف بوجود الحياة.'},
    {'name': 'المريخ', 'image': 'assets/images/mars.png', 'description': 'الكوكب الأحمر بسبب تربته الغنية بالحديد.'},
    {'name': 'المشتري', 'image': 'assets/images/jupiter.png', 'description': 'أكبر كوكب في النظام الشمسي.'},
    {'name': 'زحل', 'image': 'assets/images/saturn.png', 'description': 'معروف بحلقاته الجميلة.'},
    {'name': 'أورانوس', 'image': 'assets/images/uranus.png', 'description': 'كوكب جليدي مائل على جانبه.'},
    {'name': 'نبتون', 'image': 'assets/images/neptune.png', 'description': 'أبعد كوكب في النظام الشمسي.'},
  ];

  List<Map<String, String>> filteredPlanets = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredPlanets = planets;
  }

  // Fonction de filtre
  void _filterPlanets(String query) {
    final List<Map<String, String>> filtered = planets
        .where((planet) => planet['name']!.contains(query))
        .toList();

    setState(() {
      filteredPlanets = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barre de recherche
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'ابحث عن كوكب...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onChanged: _filterPlanets,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredPlanets.length,
            itemBuilder: (context, index) {
              final planet = filteredPlanets[index];
              return Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                child: ListTile(
                  leading: Image.asset(
                    planet['image']!,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(planet['name']!),
                  subtitle: Text(planet['description']!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanetDetailPage(
                          planet: planet,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
