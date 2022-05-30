import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<String> index = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text('Page4'),
      ),
      body: index.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_off,
                    size: 150,
                    color: Colors.grey,
                  ),
                  Text(
                    'No Images',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : Container(),
      floatingActionButton: FloatingActionButton(
        key: Key('UPLOAD'),
        onPressed: () {
         
        },
        backgroundColor: Colors.green[800],
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}
