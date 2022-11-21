import 'package:nataliamacias/model/data.dart';
import 'package:nataliamacias/model/carros_model.dart';
import 'package:nataliamacias/screen/carro_detail_screen.dart';
import 'package:nataliamacias/screen/carro_list_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Carro carro;
  TextStyle lsize = TextStyle(fontSize: 16);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Colors.lime),
    ),
  );

  DetailScreen({Key? key, required this.carro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(carro.brand),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                'From:' + carro.model,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(carro.brand, style: lsize),
                  Text(
                    carro.manufacturingDate.toString().split(' ')[0],
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 117, 114, 114)),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(carro.description, style: lsize)
          ],
        ),
      ),
    );
  }
}