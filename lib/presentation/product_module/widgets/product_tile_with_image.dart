import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTileWithImage extends StatelessWidget {
  final String image;
  final String title;
  final String? subTitle;
  final bool isLeadingImage;

  const ProductTileWithImage(
      {super.key,
      required this.title,
      this.subTitle,
      required this.image,
      this.isLeadingImage = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:isLeadingImage? MainAxisAlignment.start:MainAxisAlignment.end,
        children: [
          isLeadingImage
              ? Flexible(child: _imageBuilder(image))
              : const SizedBox.shrink(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          !isLeadingImage
              ? Flexible(child: _imageBuilder(image))
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

Widget _imageBuilder(String image) {
  return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      elevation: 5.0,
      child: Image.network(
        image,
        width: 80,
        height: 90,
        fit: BoxFit.fitWidth,
      ));
}
