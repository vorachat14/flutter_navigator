import 'package:flutter/material.dart';
import 'package:flutter_navigator/page/home.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP HOME'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: PinFieldAutoFill(
              decoration: UnderlineDecoration(
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              currentCode: '',
              onCodeChanged: (code) {
                if (code?.length == 6) {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
              codeLength: 6,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('เข้าสู่ระบบ'),
            ),
          )
        ],
      ),
    );
  }
}
