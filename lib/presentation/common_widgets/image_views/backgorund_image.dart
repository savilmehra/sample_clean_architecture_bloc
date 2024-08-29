import 'package:flutter/cupertino.dart';

class BackGroundImage extends StatelessWidget
{
  final String url;

  const BackGroundImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
   return
       Image.network(url,fit: BoxFit.cover,);
  }
}