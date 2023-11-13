import 'package:flutter/material.dart';

import 'package:zowar/login.dart';

class Npassword extends StatefulWidget {
  const Npassword({super.key});

  @override
  State<Npassword> createState() => _NpasswordState();
}

class _NpasswordState extends State<Npassword> {
  bool obscureText = true;
  final _formState = GlobalKey<FormState>();
  //final _formState1 = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _compassNode = FocusNode();

  // regular expression to check if string
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  //A function that validate user entered password
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Text(
                  'New Password',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 50),
                child: Text(
                  'Enter New Password',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 0.07,
                    child: Form(
                      key: _formState,
                      child: TextFormField(
                        controller: _passwordController,
                        focusNode: _passwordNode,
                        textAlignVertical: TextAlignVertical.bottom,
                        onTapOutside: (event) => _passwordNode.unfocus(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff444444),
                            ),
                            borderRadius:
                                BorderRadius.circular(40), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(50), //<-- SEE HERE
                          ),
                          hintText: 'At least 8 digits',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  )),
              //////////////////////////////
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(right: 40, left: 50),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 0.07,
                    child: Form(
                      child: TextFormField(
                        controller: _passwordController,
                        focusNode: _compassNode,
                        textAlignVertical: TextAlignVertical.bottom,
                        onTapOutside: (event) => _compassNode.unfocus(),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xff444444),
                            ),
                            borderRadius:
                                BorderRadius.circular(40), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(50), //<-- SEE HERE
                          ),
                          hintText: '********',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 150,
              ),
              //////////////////////////////////////////////////////////////////// send //////////////////////////////////////////////////////////////////
              InkWell(
                onTap: () {
                  print(_passwordController);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40),
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff39757D), Color(0xff8AB0B5)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(21.60)),
                    child: Center(
                      child: Text(
                        "Send",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
