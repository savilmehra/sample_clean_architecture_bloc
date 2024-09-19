import 'package:sampleapp/bloc/login_bloc/login_bloc.dart';
import 'package:sampleapp/data/login_data/login_model.dart';
import 'package:sampleapp/presentation/common_widgets/texts/header_texts.dart';
import 'package:sampleapp/presentation/home_module/home_page_screen.dart';
import 'package:sampleapp/presentation/ui_constant/ui_constants.dart';
import 'package:sampleapp/presentation/ui_constant/ui_size_constants.dart';
import 'package:sampleapp/utils/text_validaters/TextValidators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common_widgets/buttons/custom_text_button.dart';
import '../common_widgets/clippers/clipper_background.dart';
import '../common_widgets/edit_texts/custom_edit_text_with_border.dart';
import 'login_widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _userNameTextEditor = TextEditingController();
  final _passwordTextEditor = TextEditingController();
   Key? email;
  Key? pass;
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<LoginBloc, LoginModel>(
        listener: (BuildContext context, LoginModel state) {
          if (state.isLoginSuccess) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePageScreen()),
                (Route<dynamic> route) => false);
          }
        },
        child: BlocBuilder<LoginBloc, LoginModel>(builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Stack(
                children: [
                  const ClipperBackground(
                    gradientColors: [Colors.indigo, Colors.white],
                  ),
                  Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Flexible(
                          child: HeaderTexts(
                            text: UiConstants.login,
                            textColor: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Flexible(
                          child: CustomEditTextWithBorder(
                            key: Key("email"),
                            paddings: const EdgeInsets.all(16.0),
                            levelText: UiConstants.userName,
                            textEditingController: _userNameTextEditor,
                            validateErrorText: UiConstants.validateEmail,
                            textValidators: EmailValidator(),
                          ),
                        ),
                        Flexible(
                          child: CustomEditTextWithBorder(
                            paddings: const EdgeInsets.all(16.0),
                            levelText: UiConstants.passWord,
                            isPassword: true,
                            textEditingController: _passwordTextEditor,
                            validateErrorText: UiConstants.validatePassword,
                            textValidators: PasswordValidation(),
                          ),
                        ),
                        Flexible(
                          child: CustomTextButton(

                            buttonClick: () {
                              if (_formKey.currentState!.validate()) {
                                BlocProvider.of<LoginBloc>(context).login(
                                    email: _userNameTextEditor.text,
                                    password: _passwordTextEditor.text);
                              }
                            },
                            buttonText: UiConstants.signIn,
                          ),
                        ),
                        Flexible(
                          child: CustomTextButton(
                            paddings: const EdgeInsets.only(bottom: 60),
                            buttonClick: () {
                              if (_formKey.currentState!.validate()) {
                                BlocProvider.of<LoginBloc>(context).login(
                                    email: _userNameTextEditor.text,
                                    password: _passwordTextEditor.text);
                              }
                            },
                            buttonText: UiConstants.signUp,
                          ),
                        ),
                        const Spacer(),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(UiSizeConstants.size20),
                            child: SocialLoginButton(
                              onCLick: () {
                                BlocProvider.of<LoginBloc>(context)
                                    .signInWithGoogle();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  state.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          );
        }),
      );

  }
}
