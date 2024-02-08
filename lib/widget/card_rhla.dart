import 'package:first_flutter_app/rhla.dart';
import 'package:flutter/material.dart';

import '../details.dart';

class CardRhla extends StatelessWidget {
  final Rhla rhla;
  const CardRhla(
    this.rhla, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Details(rhla) ),
          );
        },
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(rhla.image),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person),
                        Text('${rhla.visitors}'),
                      ],
                    ),
                    Text(rhla.name, style: const TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
