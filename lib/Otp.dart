import 'package:flutter/material.dart';
import 'package:zowar/signup.dart';
// import 'package:zowar/newpass.dart';
// import 'package:zowar/signup.dart';

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
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //back button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
            const Padding(
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
                const Text(
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
                  padding: const EdgeInsets.symmetric(horizontal: 50),
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
                        // SizedBox(
                        //   height: 40,
                        //   width: 40,
                        //   child: TextFormField(
                        //     controller: _pin1Controller,
                        //     // autofocus: true,
                        //     onSaved: (pin1) {},
                        //     onChanged: (value) {
                        //       if (value.length == 1) {
                        //         FocusScope.of(context).nextFocus();
                        //       } else {
                        //         FocusScope.of(context).unfocus();
                        //       }
                        //     },
                        //     keyboardType: TextInputType.number,
                        //     maxLength: 1,
                        //     decoration: InputDecoration(
                        //       counterText: "",
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(18)),
                        //     ),
                        //     textAlign: TextAlign.center,
                        //     style: Theme.of(context).textTheme.titleLarge,
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 36,
                        //   width: 36,
                        //   child: TextFormField(
                        //     controller: _pin2Controller,
                        //     // autofocus: true,
                        //     onSaved: (pin2) {},
                        //     onChanged: (value) {
                        //       if (value.length == 1) {
                        //         FocusScope.of(context).nextFocus();
                        //       } else {
                        //         FocusScope.of(context).previousFocus();
                        //       }
                        //     },
                        //     keyboardType: TextInputType.number,
                        //     maxLength: 1,
                        //     decoration: InputDecoration(
                        //       counterText: "",
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(18)),
                        //     ),
                        //     textAlign: TextAlign.center,
                        //     style: Theme.of(context).textTheme.titleLarge,
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 36,
                        //   width: 36,
                        //   child: TextFormField(
                        //     controller: _pin3Controller,
                        //     // autofocus: true,
                        //     onSaved: (pin3) {},
                        //     onChanged: (value) {
                        //       if (value.length == 1) {
                        //         FocusScope.of(context).nextFocus();
                        //       } else {
                        //         FocusScope.of(context).previousFocus();
                        //       }
                        //     },
                        //     keyboardType: TextInputType.number,
                        //     maxLength: 1,
                        //     decoration: InputDecoration(
                        //       counterText: "",
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(18)),
                        //     ),
                        //     textAlign: TextAlign.center,
                        //     style: Theme.of(context).textTheme.titleLarge,
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 36,
                        //   width: 36,
                        //   child: TextFormField(
                        //     controller: _pin4Controller,
                        //     // autofocus: true,
                        //     onSaved: (pin4) {},
                        //     onChanged: (value) {
                        //       if (value.length == 1) {
                        //         FocusScope.of(context).nextFocus();
                        //       } else {
                        //         FocusScope.of(context).previousFocus();
                        //       }
                        //     },
                        //     keyboardType: TextInputType.number,
                        //     maxLength: 1,
                        //     decoration: InputDecoration(
                        //       counterText: "",
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(18)),
                        //     ),
                        //     textAlign: TextAlign.center,
                        //     style: Theme.of(context).textTheme.titleLarge,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' If you didn’t receive a code',
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
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => Npassword(),
                    //   ),
                    // );
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
                Text(
                  ' Do you have an account?',
                  style: TextStyle(color: Color(0xff8F8F8F)),
                ),
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
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
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
