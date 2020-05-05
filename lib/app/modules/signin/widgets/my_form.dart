import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/signin/signin_controller.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  SigninController controller = Modular.get<SigninController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
      child: Form(
        child: Column(
          children: <Widget>[
            Text('Crie sua conta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 34, 42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.grey[800],
                    ),
                    hintText: "Nome",
                    hintStyle: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 34, 42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.grey[800],
                    ),
                    hintText: "E-mail",
                    hintStyle: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 34, 42),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey[800],
                    ),
                    hintText: "Senha",
                    hintStyle: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                  cursorColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Observer(builder: (context) {
              return Container(
                height: 50,
                width: double.infinity,
                child: RaisedButton(
                  color: Color.fromARGB(255, 255, 144, 0),
                  highlightColor: Colors.transparent,
                  elevation: 0,
                  disabledElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  hoverElevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Color.fromARGB(255, 255, 144, 0),
                    ),
                  ),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
