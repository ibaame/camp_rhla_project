import 'package:flutter/material.dart';

import 'rhla.dart';

class Details extends StatelessWidget {
  final Rhla rhla;
  const Details(this.rhla, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("رقم الرحلة ${rhla.num}"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(rhla.image),
              ),
              const SizedBox(height: 25),
              const Text(
                'اسم الرحلة',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                rhla.name,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'الفئة العمرية',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '${rhla.age}',
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person),
                      Text('${rhla.visitors}'),
                    ],
                  ),
                  const Text(
                    ':عدد الزوار',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
