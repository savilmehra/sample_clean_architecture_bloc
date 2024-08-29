
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleapp/data/login_data/login_model.dart';

class LoginBloc extends Cubit<LoginModel> {
  LoginBloc() : super(LoginModel());

  login({required String email, required String password}) async {
    emit(LoginModel(userName: email, password: password, isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginModel(
        userName: email,
        password: password,
        isLoading: false,
        isLoginSuccess: true));
  }

/*  Future signInWithGoogle() async {
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
  }*/
}
