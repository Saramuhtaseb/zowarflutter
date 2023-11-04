import 'package:flutter/material.dart';
// import 'package:zowar/l.dart';
// import 'package:zowar/login.dart';
// import 'package:zowar/signup.dart';

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
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //pop button
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            //forget
            const Padding(
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
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.08,
                  ),
                  //email
                  const Text(
                    'Enter Your Email Address',
                    style: TextStyle(
                      fontSize: 18,
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
                              width: 3,
                              color: Colors.grey,
                            ),
                            borderRadius:
                                BorderRadius.circular(20), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            // borderSide: BorderSide(),
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => Pass(),
                      //   ),
                      // );
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => Login(),
                      //   ),
                      // );
                    },
                    child: Text(
                      'Back to sign in',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Text(
                    ' Do you have an account?',
                    style: TextStyle(
                      color: Color(0xff8F8F8F),
                      fontSize: 18,
                    ),
                  ),
                  /////////////////////////
                  SizedBox(
                    width: width * 0.8,
                    height: height * 0.055,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => Signup(),
                        //   ),
                        // );
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
                        side: BorderSide(
                          width: 3.0,
                          color: Colors.grey,
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
