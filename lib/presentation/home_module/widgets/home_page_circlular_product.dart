import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/home_data/product_model.dart';
import '../../common_widgets/buttons/text_button_without_background.dart';
import '../../ui_constant/ui_constants.dart';

class HomePageCircularProduct extends StatelessWidget {
  HomePageCircularProduct({super.key, this.data = const []});

  final List<ProductModel> data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButtonWithoutBackground(
              buttonClick: () {},
              buttonText: UiConstants.viewALl,
            ),
            SizedBox(
              height: constraints.maxWidth / 4,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: SizedBox(
                            height: constraints.maxWidth / 4.5,
                            width: constraints.maxWidth / 4.5,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              backgroundImage: NetworkImage(
                                data[index].image ?? "",
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              data[index].title ?? "",
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            )
          ],
        );
      },
    );
  }
}
