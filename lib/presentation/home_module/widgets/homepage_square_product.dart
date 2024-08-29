import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/data/home_data/product_model.dart';

import '../../common_widgets/buttons/text_button_without_background.dart';
import '../../ui_constant/ui_constants.dart';

class HomePageSquareProduct extends StatelessWidget {
  final List<ProductModel> data;
  final Function viewAllCLicked;

  const HomePageSquareProduct(
      {super.key, this.data = const [], required this.viewAllCLicked});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButtonWithoutBackground(
              buttonClick: () {
                viewAllCLicked();
              },
              buttonText: UiConstants.viewALl,
            ),
            SizedBox(
              height: constraints.maxWidth / 3,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: constraints.maxWidth / 3,
                            width: constraints.maxWidth / 4,
                            child: Image.network(
                              data[index].image ?? "",
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: constraints.maxWidth / 4,
                              height: constraints.maxWidth / 3,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.teal,
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.teal,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0, 0, 0.5, 1.5],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                      ),
                                      child: Text(
                                        "${data[index].discount} % off",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, bottom: 4),
                                      child: Text.rich(TextSpan(
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          text:
                                              "${data[index].discountedPrice}₹",
                                          children: <InlineSpan>[
                                            TextSpan(
                                              text: "  ${data[index].price}₹",
                                              style: const TextStyle(
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        );
      },
    );
  }
}
