import 'package:sampleapp/presentation/common_widgets/clippers/clipper_with_curvv.dart';
import 'package:sampleapp/presentation/common_widgets/clippers/shadow_clipper.dart';
import 'package:sampleapp/presentation/common_widgets/texts/header_texts.dart';
import 'package:sampleapp/presentation/ui_constant/ui_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/size_config_bloc/size_config_bloc.dart';
import '../texts/animated_text.dart';

class SplashClipper extends StatelessWidget {
  final List<Color> gradientColors;
  final List<Color> secondGradientColors;
final  Widget ?child;
  const SplashClipper(
      {super.key,
      required this.gradientColors,
        this.child,
      required this.secondGradientColors});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: gradientColors,
          )),
        ),
        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart: Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.0),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 0.9,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.5),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 1.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4.5),
              secondQuadraticBezierOffsetStart: Offset(
                  (BlocProvider.of<SizeConfigBloc>(context).state.width / 1.2),
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 8),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: gradientColors,
            )),
          ),
        ),
        ClipShadowPath(
          shadow: Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart: Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.5),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4.5),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3.1),
              secondQuadraticBezierOffsetStart: Offset(
                  (BlocProvider.of<SizeConfigBloc>(context).state.width / 1.2),
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4.5)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: secondGradientColors,
            )),
          ),
        ),
         Align(
            alignment: Alignment.center,
            child: child??const SizedBox.shrink()),
        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 20.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart: Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.9),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 5,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 5.5),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2.3,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.7),
              secondQuadraticBezierOffsetStart: Offset(
                  (BlocProvider.of<SizeConfigBloc>(context).state.width / 1.2),
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.5),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.5)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: gradientColors,
            )),
          ),
        ),
      ],
    );
  }
}
