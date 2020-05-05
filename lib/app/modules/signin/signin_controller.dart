import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'signin_controller.g.dart';

class SigninController = _SigninControllerBase with _$SigninController;

abstract class _SigninControllerBase with Store {
  
  @action
  Future onTapSignUp() async{
    Future.delayed(Duration(seconds: 1)).then((v) {
      Modular.to.pushReplacementNamed('/login/');
    });
  }
}
