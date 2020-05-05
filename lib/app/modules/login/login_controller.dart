import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  bool _login;

  @computed
  bool get login => _login;

  @action
  Future onTapLogin() async {
    this._login = true;
    Future.delayed(Duration(seconds: 1)).then((v) {
      Modular.to.pushReplacementNamed('/home/');
    });
  }

  @action
  Future onTapSignIn() async{
    Future.delayed(Duration(seconds: 1)).then((v) {
      Modular.to.pushReplacementNamed('/signin/');
    });
  }

  _LoginControllerBase() {
    this._login = false;
  }
}
