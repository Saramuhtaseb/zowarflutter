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
  final TextEditingController _passwordController = TextEditingController();
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
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                Form(
                  key: _formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'New Pasword',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Enter New Password',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),

                      Padding(
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          child: SizedBox(
                            width: width * 0.8,
                            height: height * 0.07,
                            child: TextField(
                              controller: _passwordController,
                              obscuringCharacter: '*',
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.circular(21), //<-- SEE HERE
                                ),
                              ),
                            ),
                          )),

                      Text(
                        'Confirm Password',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),

                      Padding(
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          child: SizedBox(
                            width: width * 0.8,
                            height: height * 0.07,
                            child: TextField(
                              controller: _passwordController,
                              obscuringCharacter: '*',
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.grey),
                                  borderRadius:
                                      BorderRadius.circular(21), //<-- SEE HERE
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 70,
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
                        child: Container(
                          width: width * 0.8,
                          height: height * 0.07,
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
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      /////////////////////////////////////////////////////////////////////////////////////
                    ],
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
