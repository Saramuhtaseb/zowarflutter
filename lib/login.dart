import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  bool cheakboxpressed = false;
  bool abc = true;

  final _formState = GlobalKey<FormState>();

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.?[A-Z])(?=.?[a-z])(?=.?[0-9])(?=.?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  FocusNode fileduser = FocusNode();
  FocusNode filedpass = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            height: height * 0.5,
            width: width,
            child: Image.asset(
              'assets/images/back.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ///// logo//////
              SizedBox(
                height: height * 0.4,
                width: width * 0.6,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              // white box
              Container(
                height: height * 0.6,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 229, 218),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)),
                ),
                child: Form(
                  key: _formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50, left: 20),
                            child: Text(
                              'Log in ',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      SizedBox(
                        width: 350,
                        height: 200,
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          controller: _scrollController,
                          children: [
                            /////////////// your email ///////////
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Your Email',
                                style: TextStyle(color: Color(0xffB8B8B8)),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.08,
                              width: width * 0.9,
                              child: TextFormField(
                                focusNode: fileduser,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                onTapOutside: (event) => fileduser.unfocus(),
                                // onTap: () {
                                //   _scrollController.jumpTo(_scrollController
                                //       .position.maxScrollExtent);
                                // },
                                onEditingComplete: () {
                                  FocusScope.of(context).nextFocus();
                                  _scrollController.jumpTo(_scrollController
                                      .position.maxScrollExtent);
                                },
                                // onFieldSubmitted: (value) {
                                //   FocusScope.of(context).nextFocus();
                                // },

                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                            ),

                            /////////////// your password ///////////
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Your Password',
                                style: TextStyle(color: Color(0xffB8B8B8)),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.08,
                              width: width * 0.9,
                              child: TextFormField(
                                focusNode: filedpass,
                                obscuringCharacter: '*',
                                obscureText: obscureText,
                                onTap: () {
                                  _scrollController.jumpTo(_scrollController
                                      .position.maxScrollExtent);
                                },
                                onFieldSubmitted: (value) {
                                  _scrollController.jumpTo(_scrollController
                                      .position.minScrollExtent);
                                },
                                onTapOutside: (event) {
                                  filedpass.unfocus();
                                  _scrollController.jumpTo(_scrollController
                                      .position.minScrollExtent);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.key),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        obscureText = !obscureText;
                                      });
                                    },
                                    child: obscureText
                                        ? Icon(Icons.visibility)
                                        : Icon(Icons.visibility_off),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.065,
                              width: width * 0.35,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sign up',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.arrow_forward,
                                        color: Colors.white),
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))))),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: height * 0.065,
                              width: width * 0.48,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Login',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.arrow_forward,
                                        color: Colors.white),
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          // MaterialPageRoute(
                          //   builder: (context) => Pass(),
                          // ),
                          // );
                        },
                        child: Text(
                          'Forget Your Password ?',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
