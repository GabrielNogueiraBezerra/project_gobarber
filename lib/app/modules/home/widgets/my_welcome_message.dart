import 'package:flutter/material.dart';

class MyWelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Color.fromARGB(255, 40, 39, 45),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bem vindo,',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontFamily: 'FenomenSlab',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Gabriel Nogueira',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 144, 0),
                    fontSize: 24,
                    fontFamily: 'ShadonSlab',
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://http2.mlstatic.com/foto-desenho-para-o-seu-perfil-das-redes-sociais-D_NQ_NP_614041-MLB27185740295_042018-O.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
