import 'package:project_gobarber/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:project_gobarber/app/app_widget.dart';
import 'package:project_gobarber/app/modules/home/home_module.dart';
import 'package:project_gobarber/app/modules/login/login_module.dart';
import 'package:project_gobarber/app/modules/signin/signin_module.dart';
import 'package:project_gobarber/app/modules/splash/splash_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(
          Modular.initialRoute,
          module: SplashModule(),
          transition: TransitionType.fadeIn,
        ),
        Router(
          Modular.initialRoute + 'login',
          module: LoginModule(),
          transition: TransitionType.rightToLeft,
        ),
        Router(
          Modular.initialRoute + 'home',
          module: HomeModule(),
          transition: TransitionType.size,
        ),
        Router(
          Modular.initialRoute + 'signin',
          module: SigninModule(),
          transition: TransitionType.leftToRight,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
