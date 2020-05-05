import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:project_gobarber/app/modules/home/widgets/item_list_barbers.dart';

class ListBarbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: MediaQuery.of(context).padding.top + 170,
      child: Container(
        color: Color.fromARGB(255, 49, 46, 57),
        width: double.infinity,
        height: MediaQuery.of(context).size.height -
            (MediaQuery.of(context).padding.top + 170),
        child: AnimationLimiter(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: ItemListBarbers(
                      nome: 'Gabriel Nogueira',
                      diasSemana: 'Segunda à Sexta',
                      horasDia: '8h às 18h',
                      image:
                          'https://http2.mlstatic.com/foto-desenho-para-o-seu-perfil-das-redes-sociais-D_NQ_NP_614041-MLB27185740295_042018-O.jpg',
                      index: index,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
