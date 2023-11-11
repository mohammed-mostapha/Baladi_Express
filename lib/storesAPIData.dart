import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'Globalvars.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';

class storesAPIData extends StatefulWidget {
  const storesAPIData({super.key});

  @override
  State<storesAPIData> createState() => _storesAPIDataState();
}

// ignore: camel_case_types
class _storesAPIDataState extends State<storesAPIData> {
  late final Future _apiResponse;
  dynamic _jsonList;

  @override
  void initState() {
    _apiResponse = _fetchData();
    super.initState();
  }

  Future _fetchData() async {
    try {
      Dio dio = Dio();
      dio.options.headers['content-Type'] = 'application/json';
      dio.options.headers[xApiKeyKey] = xApiKeyValue;
      var response = await dio.get(restaurant);

      if (response.statusCode == 200) {
        // extracting the stores only from the response
        _jsonList = response.data['stores'];
        return _jsonList;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _apiResponse,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Material(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _jsonList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: double.infinity,
                          height: 300,
                          child: CachedNetworkImage(
                            imageUrl:
                                "$baseURL${_jsonList[index]['banner_image']}",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            errorWidget: (context, url, error) => Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/restaurant_placeholder.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${_jsonList[index]['slug']}",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFff5800),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "${_jsonList[index]['avgRating']}"
                                                        .length >
                                                    4
                                                ? "${_jsonList[index]['avgRating']}"
                                                    .substring(0, 3)
                                                : "0.0",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // what we offer
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Text("Coffe, Dessert, Juice",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ),
                              // the food we offer

                              // end of the food we offer

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: SvgPicture.asset(
                                          'assets/images/baladi_clock.svg'),
                                    ),
                                    Text("60 - 90 . 5km",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ],
                                ),
                              ),

                              // end of what we offer

                              const DottedLine(
                                dashLength: 2,
                                dashColor: Colors.grey,
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5.0),
                                        child: SvgPicture.asset(
                                            'assets/images/baladi_thunder_bolt.svg'),
                                      ),
                                      Text(
                                        "Buy 1 Get 1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: const Color(0xFFff5800),
                                            ),
                                      ),
                                      const VerticalDivider(
                                        thickness: 2,
                                        color: Color(0xFFff5800),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: SvgPicture.asset(
                                            'assets/images/Baladi_percentage.svg'),
                                      ),
                                      Text(
                                        "30% off Discount",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              color: const Color(0xFFff5800),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
