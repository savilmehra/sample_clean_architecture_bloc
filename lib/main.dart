import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart' hide TextStyle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleapp/bloc/home_bloc/home_bloc.dart';
import 'package:sampleapp/presentation/splash_module/splash_screen.dart';
import 'package:sampleapp/utils/themes/custom_themes.dart';

import 'bloc/app_bar_bloc/app_bar_bloc.dart';
import 'bloc/login_bloc/login_bloc.dart';
import 'bloc/product_bloc/product_bloc.dart';
import 'bloc/size_config_bloc/size_config_bloc.dart';
import 'bloc/splash_bloc/splash_bloc.dart';
import 'bloc/theme_bloc/theme_bloc.dart';
import 'data/home_data/product_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_performance/firebase_performance.dart';

import 'dsa.dart';
Future<void> main() async {

  DSA().findDuplicates([1,3,4,2,3,4,5,6,78,8,]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(


  options: const FirebaseOptions(
    apiKey: 'AIzaSyDzTRyB_KhjnrcJmv3IXSBO82KCHa6u8oY',
    appId: '1:438444560321:android:bd75944e6cd87bfb3ee940',
    messagingSenderId: '438444560321',
    projectId: 'sampleapp-a672e',
    storageBucket: 'sampleapp-a672e.appspot.com',
  ));

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  final fcmToken = await FirebaseMessaging.instance.getToken();
  FirebasePerformance performance = FirebasePerformance.instance;
  print("FCMToken $fcmToken");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (BuildContext context) => ThemeBloc(),
        ),
        BlocProvider<SplashBloc>(
          create: (BuildContext context) => SplashBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => LoginBloc(),
        ),
        BlocProvider<AppBarBloc>(
          create: (BuildContext context) => AppBarBloc(),
        ),
        BlocProvider<SizeConfigBloc>(
          create: (BuildContext context) => SizeConfigBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => HomeBloc(),
        ),
        BlocProvider<  ProductBloc>(
          create: (BuildContext context) => ProductBloc(),
        ),



      ],
      child: BlocBuilder<ThemeBloc, ThemeData>(builder: (context, state) {
        return MaterialApp(
          theme: state,
          darkTheme: CustomThemes.darkTheme,
          home:  const SplashScreen(),
        );
      }),
    );
  }
}
