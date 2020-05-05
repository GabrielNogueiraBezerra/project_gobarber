import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/signin/signin_controller.dart';

class MyButtonSignup extends StatefulWidget {
  @override
  _MyButtonSignupState createState() => _MyButtonSignupState();
}

class _MyButtonSignupState extends State<MyButtonSignup> {
  SigninController controller = Modular.get<SigninController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 35, 34, 42),
            width: 1,
          ),
        ),
      ),
      child: Center(
        child: RaisedButton(
          color: Colors.transparent,
          highlightColor: Colors.transparent,
          elevation: 0,
          disabledElevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          hoverElevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Voltar para logon',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          onPressed: controller.onTapSignUp,
        ),
      ),
    );
  }
}
