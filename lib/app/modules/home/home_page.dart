import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_gobarber/app/modules/home/widgets/list_barbers.dart';
import 'package:project_gobarber/app/modules/home/widgets/my_welcome_message.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 46, 57),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).padding.top,
            child: MyWelcomeMessage(),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).padding.top + 100,
            child: Container(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'Cabeleireiros',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
          ListBarbers(),
        ],
      ),
    );
  }
}
