import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('Page2'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Image.asset('assets/images/qrcode.png'),
                    width: 390,
                    height: 250,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
