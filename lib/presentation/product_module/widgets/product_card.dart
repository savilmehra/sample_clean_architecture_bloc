import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleapp/data/home_data/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
final Function cardCLick;

  const ProductCard({super.key, required this.productModel,required this.cardCLick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        cardCLick();
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    productModel.image ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Text(
                  "${productModel.brand}",
                  style:
                      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 2),
                child: Text(
                  "${productModel.discountedPrice} ₹",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
