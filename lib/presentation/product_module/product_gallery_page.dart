import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleapp/bloc/home_bloc/home_bloc.dart';
import 'package:sampleapp/bloc/product_bloc/product_bloc.dart';
import 'package:sampleapp/bloc/product_bloc/product_state.dart';
import 'package:sampleapp/presentation/product_module/product_details_page.dart';
import 'package:sampleapp/presentation/product_module/widgets/product_card.dart';

import '../common_widgets/base_widgets/base_widget.dart';
import '../common_widgets/clippers/clipper_background.dart';

class ProductGalleryPage extends StatelessWidget {
  const ProductGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<ProductBloc, ProductState>(listener: (context, state) {
        if (state.productCLick) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsPage(
                  productModel: BlocProvider.of<HomeBloc>(context)
                      .state
                      .shirts![state.productIndex ?? 0],
                ),
              ));
        }
      }, child:
          BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
        return BaseWidget(
          color1: Colors.black,
          color2: Colors.white,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount:
                  BlocProvider.of<HomeBloc>(context).state.shirts!.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                    cardCLick: () {
                      BlocProvider.of<ProductBloc>(context).productCLick(index);
                    },
                    productModel: BlocProvider.of<HomeBloc>(context)
                        .state
                        .shirts![index]);
              }),
        );
      })),
    );
  }
}
