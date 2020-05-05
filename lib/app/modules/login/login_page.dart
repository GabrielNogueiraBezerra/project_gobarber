import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/login/widgets/my_button_signin.dart';
import 'package:project_gobarber/app/modules/login/widgets/my_form.dart';
import 'package:project_gobarber/app/widgets/my_logo.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 46, 57),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).padding.top + 50,
                left: 0,
                right: 0,
                child: MyLogo(),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 250,
                left: 0,
                right: 0,
                child: MyForm(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: MyButtonSignin(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
