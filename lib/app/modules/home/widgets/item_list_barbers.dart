import 'package:flutter/material.dart';

class ItemListBarbers extends StatelessWidget {
  final String nome;
  final String diasSemana;
  final String horasDia;
  final String image;
  final int index;

  const ItemListBarbers(
      {Key key, this.nome, this.diasSemana, this.horasDia, this.image, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 10,
        top: 0,
      ),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 62, 59, 70),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Color.fromARGB(255, 255, 144, 0),
                        size: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        diasSemana,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.watch_later,
                        color: Color.fromARGB(255, 255, 144, 0),
                        size: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        horasDia,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
