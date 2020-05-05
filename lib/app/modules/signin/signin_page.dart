import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/signin/widgets/my_button_signup.dart';
import 'package:project_gobarber/app/modules/signin/widgets/my_form.dart';
import 'package:project_gobarber/app/widgets/my_logo.dart';
import 'signin_controller.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key key, this.title = "Signin"}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends ModularState<SigninPage, SigninController> {
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
                left: 0,
                right: 0,
                top: MediaQuery.of(context).padding.top + 50,
                child: MyLogo(),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).padding.top + 250,
                child: MyForm(),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: MyButtonSignup(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
