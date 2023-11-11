import 'package:baladi/offers.dart';
import 'package:baladi/orderagain.dart';
import 'package:baladi/restaurantsFilters.dart';
import 'package:baladi/screenDivider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'storesAPIData.dart';
import 'whatsonyoumind.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({super.key});

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Restaurants'),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: SvgPicture.asset(
                      'assets/images/baladi_search_icon.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Search Food,Restaurants etc.",
                    suffixIcon: SvgPicture.asset(
                      'assets/images/baladi_mic_record.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Offers(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ScreenDivider('WHAT’S ON YOUR MIND?'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Whatsonyourmind(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ScreenDivider('ORDER AGAIN?'),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const orderAgain(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const ScreenDivider('All Restaurants'),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const RestaurantsFilters(),
              ),
              const storesAPIData(),
            ],
          ),
        ),
      ),
    );
  }
}
