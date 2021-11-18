import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Tanesco extends StatefulWidget {
  const Tanesco({Key? key}) : super(key: key);

  @override
  _TanescoState createState() => _TanescoState();
}

class _TanescoState extends State<Tanesco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Namba za dharura za Tanesco'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  ExpansionTile(
                    title: Text('Dar-es-Salaam'),
                    children: [

                         ExpansionTile(
                         title: Text('Ilala'),
                          children: [
                            TextButton(
                              onPressed:(){
                                _callNumber("");
                              },

                                child: Text('Ilala')
                            ),
                          ],
                        ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

_callNumber(String number) async {
  await FlutterPhoneDirectCaller.callNumber(number);
}