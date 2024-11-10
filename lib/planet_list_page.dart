import 'package:flutter/material.dart';
import 'planet_detail_page.dart';

class PlanetListPage extends StatefulWidget {
  @override
  _PlanetListPageState createState() => _PlanetListPageState();
}

class _PlanetListPageState extends State<PlanetListPage> {
  // Liste des planètes avec des informations détaillées en arabe
  final List<Map<String, String>> planets = [
    {
      'name': 'عطارد',
      'image': 'assets/images/mercury.png',
      'description': 'أقرب كوكب إلى الشمس.',
      'size': 'القطر: 4,879 كم',
      'distance': 'المسافة من الشمس: 57.9 مليون كم',
      'surface': 'سطح قاسي مع درجات حرارة عالية.',
    },
    {
      'name': 'الزهرة',
      'image': 'assets/images/venus.png',
      'description': 'ثاني كوكب من الشمس ويمتلك جو كثيف.',
      'size': 'القطر: 12,104 كم',
      'distance': 'المسافة من الشمس: 108.2 مليون كم',
      'surface': 'جونا يتكون من غازات سامة مثل ثاني أكسيد الكربون.',
    },
    {
      'name': 'الأرض',
      'image': 'assets/images/earth.png',
      'description': 'الكوكب الوحيد المعروف بوجود الحياة.',
      'size': 'القطر: 12,742 كم',
      'distance': 'المسافة من الشمس: 149.6 مليون كم',
      'surface': 'يحتوي على ماء وجو مناسب للحياة.',
    },
    {
      'name': 'المريخ',
      'image': 'assets/images/mars.png',
      'description': 'الكوكب الأحمر بسبب تربته الغنية بالحديد.',
      'size': 'القطر: 6,779 كم',
      'distance': 'المسافة من الشمس: 227.9 مليون كم',
      'surface': 'يتميز بأرض جافة وجبال وأودية قديمة.',
    },
    {
      'name': 'المشتري',
      'image': 'assets/images/jupiter.png',
      'description': 'أكبر كوكب في النظام الشمسي.',
      'size': 'القطر: 139,820 كم',
      'distance': 'المسافة من الشمس: 778.5 مليون كم',
      'surface': 'يتكون من غازات عملاقة وأحزمة من الغيوم.',
    },
    {
      'name': 'زحل',
      'image': 'assets/images/saturn.png',
      'description': 'معروف بحلقاته الجميلة.',
      'size': 'القطر: 116,460 كم',
      'distance': 'المسافة من الشمس: 1.429 مليار كم',
      'surface': 'غلافه الجوي مكون من هيدروجين وهيليوم.',
    },
    {
      'name': 'أورانوس',
      'image': 'assets/images/uranus.png',
      'description': 'كوكب جليدي مائل على جانبه.',
      'size': 'القطر: 50,724 كم',
      'distance': 'المسافة من الشمس: 2.871 مليار كم',
      'surface': 'كوكب مائل بزاوية 98 درجة.',
    },
    {
      'name': 'نبتون',
      'image': 'assets/images/neptune.png',
      'description': 'أبعد كوكب في النظام الشمسي.',
      'size': 'القطر: 49,244 كم',
      'distance': 'المسافة من الشمس: 4.495 مليار كم',
      'surface': 'كوكب جليدي ذو غلاف جوي كثيف.',
    },
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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(planet['description']!),
                      SizedBox(height: 5),
                      Text('القطر: ${planet['size']}'),
                      Text('المسافة من الشمس: ${planet['distance']}'),
                    ],
                  ),
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
