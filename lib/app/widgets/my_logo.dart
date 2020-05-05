import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80),
      child: Container(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Awesome',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 2,
                color: Color.fromARGB(255, 253, 143, 0)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'GOBARBER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontFamily: 'YoungHeart',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                height: 2,
                color: Color.fromARGB(255, 253, 143, 0)),
            SizedBox(
              height: 10,
            ),
            Text(
              'Haircuts & Shaves',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
