import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantsFilters extends StatelessWidget {
  const RestaurantsFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset('assets/images/baladi_filters.svg'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_under_30mins.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_nearest.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_offers_filter.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_nearest.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_offers_filter.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_nearest.png'),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10.0),
          width: 100,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset('assets/images/baladi_offers_filter.png'),
        ),
      ],
    );
  }
}
