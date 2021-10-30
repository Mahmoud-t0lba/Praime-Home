import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'controller/components/constants.dart';
import 'view/home/home.dart';
import 'view/login/login_screen.dart';
import 'view/on_boarding/on_boarding_screen.dart';
import 'controller/bloc_observer.dart';
import 'controller/network/local/cache_helper.dart';
import 'controller/network/remote/dio_helper.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  Widget widget;

  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  token = CacheHelper.getData(key: 'token');

  if (onBoarding != null) {
    // ignore: unnecessary_null_comparison
    if (token != null) {
      widget = HomeScreen();
    } else {
      widget = LoginScreen();
    }
  } else {
    widget = OnBoardingScreen();
  }

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('ar', 'EG'),
        Locale('en', 'US'),
      ],
      path: 'assets',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(
        startWidget: widget,
      ),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Widget? startWidget;

  MyApp({
    this.startWidget,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Jannah',
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: startWidget,
    );
  }
}
