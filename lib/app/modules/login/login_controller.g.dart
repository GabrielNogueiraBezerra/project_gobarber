// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool> _$loginComputed;

  @override
  bool get login =>
      (_$loginComputed ??= Computed<bool>(() => super.login)).value;

  final _$_loginAtom = Atom(name: '_LoginControllerBase._login');

  @override
  bool get _login {
    _$_loginAtom.context.enforceReadPolicy(_$_loginAtom);
    _$_loginAtom.reportObserved();
    return super._login;
  }

  @override
  set _login(bool value) {
    _$_loginAtom.context.conditionallyRunInAction(() {
      super._login = value;
      _$_loginAtom.reportChanged();
    }, _$_loginAtom, name: '${_$_loginAtom.name}_set');
  }

  final _$onTapLoginAsyncAction = AsyncAction('onTapLogin');

  @override
  Future<dynamic> onTapLogin() {
    return _$onTapLoginAsyncAction.run(() => super.onTapLogin());
  }

  @override
  String toString() {
    final string = 'login: ${login.toString()}';
    return '{$string}';
  }
}
