import 'package:flutter/material.dart';
import 'package:nataliamacias/model/carros_model.dart';
import 'package:nataliamacias/model/data.dart';
import 'package:nataliamacias/screen/carro_detail_screen.dart';
import 'package:nataliamacias/screen/carro_list_screen.dart';

class CarroWidget extends StatelessWidget {
  final Carro carro;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle lsize = TextStyle(fontSize: 16);

  CarroWidget({
    Key? key,
    required this.carro,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => longPress(carro),
      onHorizontalDragEnd: (details) => swipe(carro),
      onTap: () => ontap(
        carro,
        context,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color.fromARGB(255, 245, 237, 237)),
          ),
        ),
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: carro.read ? Colors.transparent : Color.fromARGB(255, 81, 158, 240),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(carro.manufacturingDate.toString().split(' ')[0], style: lsize),
                  Text(carro.model,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontStyle: FontStyle.italic)),
                  Text(carro.brand, style: lsize),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
