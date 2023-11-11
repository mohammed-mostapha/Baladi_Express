import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    List imgList = <Image>[
      Image.asset(
        'assets/images/offer1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/offer3.png',
        fit: BoxFit.fill,
      ),
    ];

    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: imgList[index],
              borderRadius: BorderRadius.circular(10),
            ),
          );
        },
      ),
    );
  }
}
