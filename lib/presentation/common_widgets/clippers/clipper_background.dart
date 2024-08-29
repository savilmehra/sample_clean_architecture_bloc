import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleapp/presentation/common_widgets/clippers/shadow_clipper.dart';

import '../../../bloc/size_config_bloc/size_config_bloc.dart';
import 'clipper_with_curvv.dart';

class ClipperBackground extends StatelessWidget {
 final List<Color> gradientColors;
 final Widget? child;

  const ClipperBackground({super.key, required this.gradientColors,this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [




        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart:Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.5),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.5),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2.3,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.5),
              secondQuadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 1.5,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 5),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: gradientColors)),
          ),
        ),
        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart:Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3.25),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.25),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2.3,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3),
              secondQuadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 1.5,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 5),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: gradientColors)),
          ),
        ),


        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart:Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 2.5),
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
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3.5)),
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
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperWithCurve(
              firstPointWhereCurveStart:Offset(0.0,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4.25),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3 -
                      60),
              secondQuadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width -
                      (BlocProvider.of<SizeConfigBloc>(context).state.width /
                          4),
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 4 -
                      65),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 3 -
                      40)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: gradientColors)),
          ),
        ),
        Positioned(
            top: 100,
            left: BlocProvider.of<SizeConfigBloc>(context).state.width/4,
            right: 0,
            child: child??const SizedBox.shrink())
      ],
    );
  }
}
