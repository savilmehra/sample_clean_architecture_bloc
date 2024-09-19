import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/home_data/mini_app_model.dart';
import '../../../data/home_data/product_model.dart';
import '../../common_widgets/buttons/text_button_without_background.dart';

class MiniApps extends StatelessWidget {
  final List<MiniAppModel> data;
  final Function(int) viewAllCLicked;

  const MiniApps(
      {super.key, this.data = const [], required this.viewAllCLicked});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButtonWithoutBackground(
              buttonClick: () {},
              buttonText: "Our Other Products",
            ),
            SizedBox(
              height: constraints.maxWidth / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {
                          viewAllCLicked(index);
                        },
                        child: Card(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: constraints.maxWidth / 3,
                                width: constraints.maxWidth / 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Card(
                                    child: Image.network(
                                      data[index].imageUrl ?? "",
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: constraints.maxWidth / 4,
                                  height: constraints.maxWidth / 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black,
                                        Colors.transparent,
                                        Colors.transparent,
                                        Colors.black,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0, 0, 0.5, 1.5],
                                    ),
                                  ),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "${data[index].name}",
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
