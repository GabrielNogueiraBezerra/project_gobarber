import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @action
  Future onTapImage() async {
    Future.delayed(Duration(seconds: 1)).then((v) {
      Modular.to.pushReplacementNamed('/login/');
    });
  }
}
