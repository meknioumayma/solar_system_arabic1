import 'package:flutter/material.dart';

class SolarSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'النظام الشمسي',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'يتكون النظام الشمسي من الشمس، التي تعتبر النجم المركزي، وكل الأجرام السماوية التي تدور حولها بسبب الجاذبية. يشمل ذلك الكواكب، الأقمار، الكويكبات، والمذنبات.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'الشمس:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'الشمس هي نجم يقع في مركز النظام الشمسي. هي مصدر الضوء والحرارة الذي يجعل الحياة على كوكب الأرض ممكنة. يقدر قطر الشمس بحوالي 1.4 مليون كيلومتر، وهي تتكون أساسًا من الهيدروجين والهيليوم.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'الكواكب:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'النظام الشمسي يحتوي على ثمانية كواكب تدور حول الشمس. وهذه الكواكب هي (من الأقرب إلى الأبعد): عطارد، الزهرة، الأرض، المريخ، المشتري، زحل، أورانوس، ونبتون. كل كوكب له خصائص فريدة من نوعها.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              'الأقمار والكويكبات:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'الأقمار هي أجسام سماوية تدور حول الكواكب، بينما الكويكبات هي أجسام صخرية صغيرة تدور حول الشمس في منطقة بين المريخ والمشتري.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'المسافات في النظام الشمسي:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'المسافات بين الكواكب ضخمة جدًا. على سبيل المثال، المسافة بين الأرض والشمس هي حوالي 150 مليون كيلومتر، بينما المسافة بين الأرض والمريخ تصل إلى حوالي 225 مليون كيلومتر في أقرب نقطة.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'حقائق مثيرة:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '• المشتري هو أكبر كوكب في النظام الشمسي وله 79 قمرًا. \n'
              '• زحل هو الكوكب الوحيد الذي يمتلك حلقات يمكن رؤيتها بوضوح. \n'
              '• نبتون هو الكوكب الأكثر بُعدًا في النظام الشمسي وقد اكتُشف باستخدام التلسكوبات.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'الخلاصة:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'النظام الشمسي هو مكان رائع ومعقد يضم العديد من الأجرام السماوية التي تختلف في حجمها وتكوينها. الدراسة المستمرة للنظام الشمسي تساعدنا في فهم الكون بشكل أفضل.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
