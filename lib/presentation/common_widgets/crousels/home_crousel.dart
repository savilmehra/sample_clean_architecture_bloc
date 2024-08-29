import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sampleapp/bloc/size_config_bloc/size_config_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCarousel extends StatelessWidget {
  final List<String> image;
  final BoxFit? fit;

  const HomeCarousel({super.key, required this.image, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: image.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width:
                    BlocProvider.of<SizeConfigBloc>(context).state.width / 1.2,
                child:
                CachedNetworkImage(
                  imageUrl: image[itemIndex],
                  fit: fit,
                  placeholder: (context, url) =>
                      Image.asset("assets/images/placeholder.png"),
                  errorWidget: (context, url, error) =>
                  const Icon(Icons.error),
                ),

              ),
            )),
      ),
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
      ),
    );
  }
}
