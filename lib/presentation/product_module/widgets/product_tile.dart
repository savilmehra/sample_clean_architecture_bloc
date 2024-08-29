import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final String? subTitle;

  const ProductTile({super.key, required this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: ListTile(
        title: Text(title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        subtitle: Text(subTitle ?? ""),
      ),
    );
  }
}
