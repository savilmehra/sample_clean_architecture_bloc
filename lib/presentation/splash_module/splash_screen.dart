import 'package:sampleapp/bloc/splash_bloc/splash_bloc.dart';
import 'package:sampleapp/bloc/splash_bloc/splash_states.dart';
import 'package:sampleapp/presentation/common_widgets/texts/header_texts.dart';
import 'package:sampleapp/presentation/login_module/login_screen.dart';
import 'package:sampleapp/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/size_config_bloc/size_config_bloc.dart';
import '../common_widgets/clippers/splash_clipper.dart';
import '../common_widgets/texts/animated_text.dart';
import '../ui_constant/ui_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashBloc>(context).startTimer();
    BlocProvider.of<SizeConfigBloc>(context).setBasicData(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width);
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(listener: (context, state) {
        if (state.isLoaded) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (Route<dynamic> route) => false);
        }
      },
          child: BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
        return const SplashClipper(
          gradientColors: [Colors.amber, Colors.purple],
          secondGradientColors: [Colors.yellow, Colors.red],
          child: Align(
              alignment: Alignment.center,
              child: AnimatedText(text: UiConstants.splashText)),
        );
      })),
    );
  }
}
