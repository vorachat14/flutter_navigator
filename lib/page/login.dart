import 'package:flutter/material.dart';
import 'package:flutter_navigator/page/otp_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF4CAF50),
        body: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/login.jpg',
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 350),
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: TextFormField(),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: TextFormField(),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 280,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpPage()),
                              );
                            },
                            child: Text('Submit'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
