import 'package:flutter/material.dart';

class MyButtonSignin extends StatelessWidget {
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
                Icons.arrow_forward,
                color: Color.fromARGB(255, 255, 144, 0),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Criar uma conta',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 144, 0),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
