import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index_screen = 0;

  final List<Widget> screen = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index_screen],
      bottomNavigationBar: StyleProvider(
        style: Style(),
        child: ConvexAppBar(
          height: 60,
          backgroundColor: Colors.green[500],
          style: TabStyle.fixedCircle,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.qr_code, title: 'Scan'),
            TabItem(icon: Icons.qr_code_scanner_outlined),
            TabItem(icon: Icons.file_upload_outlined, title: 'Upload'),
            TabItem(icon: Icons.menu, title: 'Menu'),
          ],
          initialActiveIndex: index_screen, //optional, default as 0
          onTap: (int i) => setState(() {
            index_screen = i;
          }),
        ),
      ),
    );
  }
}

class Style extends StyleHook {
  @override
  double get activeIconSize => 45;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 30;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(fontSize: 12, color: color);
  }
}
