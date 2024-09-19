
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sampleapp/data/login_data/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Cubit<LoginModel> {
  LoginBloc() : super(LoginModel());


  login({required String email, required String password}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("isLoginSuccess", true);
    FirebaseAnalytics.instance.logEvent(name: 'Login Clicked');
    emit(LoginModel(userName: email, password: password, isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    FirebaseAnalytics.instance.logEvent(name: 'Login success');
    emit(LoginModel(
        userName: email,
        password: password,
        isLoading: false,
        isLoginSuccess: true));
  }

  Future signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final cred = await FirebaseAuth.instance.signInWithCredential(credential);
      emit(LoginModel(
          userName: cred.user?.email,
          password: "",
          isLoading: false,
          isLoginSuccess: true));
    } on Exception catch (e) {
      //todo handle
      print('exception->$e');
    }
  }
}
