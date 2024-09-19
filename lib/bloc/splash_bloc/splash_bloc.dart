import 'package:sampleapp/bloc/splash_bloc/splash_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc() : super(SplashState(isLoading: true));

  startTimer() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   final isLoginSuccess= prefs.getBool("isLoginSuccess")??false;

    await Future.delayed(const Duration(seconds: 3));
    emit(SplashState(isLoaded: true,isLoginSuccess: isLoginSuccess));
  }
}
