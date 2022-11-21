import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nataliamacias/model/data.dart';
import 'package:nataliamacias/model/carros_model.dart';
import 'package:nataliamacias/screen/carro_detail_screen.dart';
import 'package:nataliamacias/widgets/carro_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}


class _ListScreenState extends State<ListScreen> {
  void longPress(Carro carro) {
    setState(() {
      Backend().markEmailAsRead(carro.id);
    });
  }

  void swipe(Carro carro) {
    setState(() {
      Backend().deleteCarros(carro.id);
    });
  }

  void ontap(Carro carro, context) {
    setState(() {
      Backend().markEmailAsRead(carro.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(carro: carro)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getCarros()
          .map((carro) => CarroWidget(
                carro: carro,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}
