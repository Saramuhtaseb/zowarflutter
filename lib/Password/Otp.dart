import 'package:flutter/material.dart';
import 'package:zowar/signup.dart';
import 'package:zowar/Password/newpass.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formState = GlobalKey<FormState>();

  final TextEditingController _pin1Controller = TextEditingController();
  final TextEditingController _pin2Controller = TextEditingController();
  final TextEditingController _pin3Controller = TextEditingController();
  final TextEditingController _pin4Controller = TextEditingController();
  String allPins = '';

  final FocusNode _pin1Node = FocusNode();
  final FocusNode _pin2Node = FocusNode();
  final FocusNode _pin3Node = FocusNode();
  final FocusNode _pin4Node = FocusNode();

  customTextField({
    required controller,
    required node,
    required nextFocus,
  }) {
    return SizedBox(
      height: 40,
      width: 40,
      child: TextFormField(
        controller: controller,
        focusNode: node,
        onTapOutside: (event) => node.unfocus(),
        textAlign: TextAlign.center,
        onChanged: (value) {
          if (value.length == 1) {
            if (nextFocus == 0) {
              FocusScope.of(context).unfocus();
            } else {
              FocusScope.of(context).nextFocus();
            }
          } else {
            FocusScope.of(context).previousFocus();
          }
        },
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            counterText: "",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
            contentPadding: EdgeInsets.zero),
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //back button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                ' Verification',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.08,
                ),
                Text(
                  'Enter Verification Code',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Form(
                    key: _formState,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customTextField(
                          controller: _pin1Controller,
                          node: _pin1Node,
                          nextFocus: 1,
                        ),
                        customTextField(
                          controller: _pin2Controller,
                          node: _pin2Node,
                          nextFocus: 1,
                        ),
                        customTextField(
                          controller: _pin3Controller,
                          node: _pin3Node,
                          nextFocus: 1,
                        ),
                        customTextField(
                          controller: _pin4Controller,
                          node: _pin4Node,
                          nextFocus: 0,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' If you didn’t receive a code,',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffABABAB)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        style: TextStyle(
                          color: Color(0xff467E85),
                        ),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                //////////////////////////////////////////////////////////////////// send //////////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {
                    print(_pin1Controller.text);
                    print(_pin2Controller.text);
                    print(_pin3Controller.text);
                    print(_pin4Controller.text);
                    allPins =
                        '${_pin1Controller.text}${_pin2Controller.text}${_pin3Controller.text}${_pin4Controller.text}';
                    print(allPins);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Npassword(),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff39757D), Color(0xff8AB0B5)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Center(
                      child: Text(
                        "Send",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Signup(),
                      ),
                    );
                  },
                  child: Text(
                    ' Do you have an account?',
                    style: TextStyle(
                      color: Color(0xff8F8F8F),
                      fontSize: 18,
                    ),
                  ),
                ),
                /////////////
                SizedBox(
                  height: 5,
                ),
                ///////////////
                Container(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign up',
                          style: TextStyle(color: Color(0xff8F8F8F)),
                        ),
                      ],
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      side: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(21),
                        ),
                      ),
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
