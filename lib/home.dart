import 'package:flutter/material.dart';

import 'rhla.dart';
import 'widget/card_rhla.dart';

List<Rhla> r = [
  Rhla('assets/images/1.png', 'الغابة', 1000, 5, 13),
  Rhla('assets/images/2.png', 'الشاطئ', 250, 25, 15),
  Rhla('assets/images/3.png', 'الصحراء', 10, 1, 20),
  Rhla('assets/images/4.png', 'التزلج', 75, 9, 22),
  Rhla('assets/images/5.png', 'تراث', 700, 25, 8),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الرحلات'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: r.length,
          itemBuilder: ((context, index) => CardRhla(r[index])),
        ),
      ),
    );
  }
}
