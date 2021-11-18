import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Tanesco.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Huduma za Dharura'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(direction: Axis.vertical, children: [
            Padding(
              padding: const EdgeInsets.only(left: 170.0,
                  right:10,top: 20, bottom: 10,),
              child: Container(
                height: 50,
                width: 50,
                child: Center(child: Image.asset('Assets/logo/ngao.jpeg')),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 17, top: 15.0, left: 15, bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _callNumber("111");
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Image.asset('Assets/logo/polisi.jpg')),
                          Text('POLISI', style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5, top: 10.0, left: 15, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 150,
                    width: 160,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _callNumber("114");
                      },
                      child: Wrap(
                        children: [
                          Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Image.asset('Assets/logo/fire.jfif')),
                          Center(child: Text('ZIMAMOTO', style: TextStyle(fontSize: 20)))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 17, top: 15.0, left: 15, bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _callNumber("113");
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Image.asset('Assets/logo/PCCB.png')),
                          Text('TAKUKURU', style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5, top: 10.0, left: 15, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 150,
                    width: 160,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        _callNumber("113");
                      },
                      child: Wrap(
                        children: [
                          Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Image.asset('Assets/logo/DAWSCO.jfif')),
                          Center(child: Text('DAWASCO', style: TextStyle(fontSize: 20)))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                  right: 5, top: 10.0, left: 120, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 150,
                width: 160,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Tanesco()));
                  },
                  child: Wrap(
                    children: [
                      Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Image.asset('Assets/logo/TANESCO.jfif')),
                      Center(child: Text('TANESCO', style: TextStyle(fontSize: 20)))
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      drawer: Material(
        color: Colors.white,
        child: (ListView(
          children: [
            Container(
              child: Container(
                child: DrawerHeader(
                  child: Text("Huduma za dharura"),
                ),
              ),
            ),
            ListTile(title: Text('wasiliana nasi'))
          ],
        )),
      ),
    );
  }
}

_launch(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_callNumber(String number) async {
  await FlutterPhoneDirectCaller.callNumber(number);
}