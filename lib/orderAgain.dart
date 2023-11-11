import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class orderAgain extends StatelessWidget {
  const orderAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_KFC.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KFC',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Chicken Crispy Strips',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_mcdonalds.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'McDonald\'s',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'I\'m Lovin\' It',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_KFC.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KFC',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Chicken Crispy Strips',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_mcdonalds.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'McDonald\'s',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'I\'m Lovin\' It',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_KFC.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KFC',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Chicken Crispy Strips',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/baladi_mcdonalds.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'McDonald\'s',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'I\'m Lovin\' It',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              Image.asset('assets/images/baladi_reorder.png'),
            ],
          ),
        ),
      ],
    );
  }
}
