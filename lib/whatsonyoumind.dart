import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Whatsonyourmind extends StatelessWidget {
  const Whatsonyourmind({super.key});

  @override
  Widget build(BuildContext context) {
    List dishesList = <Image>[
      Image.asset(
        'assets/images/baladi_arabic.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_burgers.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_chicken.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_grill.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_salad.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_pizza.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_salad.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_arabic.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_burgers.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_chicken.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_grill.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_pizza.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_salad.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/baladi_arabic.png',
        fit: BoxFit.fill,
      ),
    ];

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: dishesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: dishesList[index],
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: dishesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  child: dishesList[index],
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
      ],
    );
    ;
  }
}
