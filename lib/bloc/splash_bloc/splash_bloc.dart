import 'package:sampleapp/bloc/splash_bloc/splash_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc() : super(SplashState(isLoading: true));

  startTimer() async
  {
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashState(isLoaded: true));

  }


}
