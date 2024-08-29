import 'package:sampleapp/presentation/common_widgets/clippers/shadow_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/size_config_bloc/size_config_bloc.dart';
import 'clipper_curve_bottom_left_to_bottom_right.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  final List<Color> gradientColors;
  final Widget? child;

  const HomeBottomNavigationBar(
      {super.key, required this.gradientColors, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipShadowPath(
          shadow: const Shadow(color: Colors.black, blurRadius: 10.0),
          clipper: ClipperCurveBottomLeftToBottomRight(
              firstPointWhereCurveStart: Offset(
                  0.0, BlocProvider.of<SizeConfigBloc>(context).state.height),
              quadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.2),
              quadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 2,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.2),
              secondQuadraticBezierOffsetStart: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width / 1.4,
                  BlocProvider.of<SizeConfigBloc>(context).state.height / 1.2),
              secondQuadraticBezierOffsetEnd: Offset(
                  BlocProvider.of<SizeConfigBloc>(context).state.width,
                  BlocProvider.of<SizeConfigBloc>(context).state.height)),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight,
                    colors: gradientColors)),
          ),
        ),
        Align(
          alignment: const Alignment(-0.5, 0.95),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.white,
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
            child: const Icon(
              Icons.face,
              size: 20.0,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0.0, 0.85),
          child: RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.white,
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
            child: const Icon(
              Icons.holiday_village_rounded,
              size: 20.0,
            ),
          ),
        ),
        Align(
            alignment: const Alignment(0.5, 0.95),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
              child: const Icon(
                Icons.back_hand_outlined,
                size: 20.0,
              ),
            ))
      ],
    );
  }
}
