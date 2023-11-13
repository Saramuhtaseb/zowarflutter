import 'package:flutter/material.dart';
import 'package:zowar/Password/Otp.dart';
import 'package:zowar/login.dart';
import 'package:zowar/signup.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formState = GlobalKey<FormState>();
  final TextEditingController _yourEmailController = TextEditingController();
  final FocusNode _emailNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //pop button
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                )),
            //forget
            Padding(
              padding: EdgeInsets.only(left: 50, top: 20),
              child: Text(
                'Forgot Pasword',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.08,
                  ),
                  //email
                  Text(
                    'Enter Email Address',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  //email field
                  SizedBox(
                    width: width * 0.8,
                    height: height * 0.055,
                    child: Form(
                      key: _formState,
                      child: TextFormField(
                        controller: _yourEmailController,
                        focusNode: _emailNode,
                        textAlignVertical: TextAlignVertical.bottom,
                        onTapOutside: (event) => _emailNode.unfocus(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff444444),
                            ),
                            borderRadius:
                                BorderRadius.circular(20), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(20), //<-- SEE HERE
                          ),
                          hintText: 'example@gmail.com',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: height * 0.08,
                  ),
                  //////////////////////////////////////////////////////////////////// send //////////////////////////////////////////////////////////////////
                  InkWell(
                    onTap: () {
                      print(_yourEmailController);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Otp(),
                        ),
                      );
                    },
                    child: Container(
                      width: width * 0.8,
                      height: height * 0.055,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff39757D), Color(0xff8AB0B5)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(21.0)),
                      child: Center(
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  /////////////////////////////////////////////////////////////////////////////////////
                  SizedBox(
                    height: height * 0.08,
                  ),
                  //back
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      'Back to log in',
                      style: TextStyle(
                          color: Color(0xffABABAB),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
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
                        color: Color(0xffABABAB),
                        fontSize: 18,
                      ),
                    ),
                  ),

                  ////////////////
                  SizedBox(
                    height: 10,
                  ),
                  /////////////////////////
                  SizedBox(
                    width: width * 0.8,
                    height: height * 0.055,
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
                            style: TextStyle(
                              color: Color(0xff8F8F8F),
                              fontSize: 18,
                            ),
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
                  ///////////////////////////////////
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
