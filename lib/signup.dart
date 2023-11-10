import 'package:zowar/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
  final TextEditingController _passwordController = TextEditingController();

  bool obscureText = true;
  bool cheakboxpressed = false;
  bool abc = true;
  TextEditingController Your_phonecontroller = TextEditingController();
  TextEditingController Your_emailcontroller = TextEditingController();

  final _formState = GlobalKey<FormState>();

  // regular expression to check if string
  RegExp pass_valid = RegExp(r"(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.\W)");
  //A function that validate user entered password
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  FocusNode filedemail = FocusNode();
  FocusNode filedphone = FocusNode();
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
              'assets/images/login.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: height * 0.25,
                width: width * 0.4,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              ////////////////////whitebox/////////////////////////////
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                  ),
                  child: Form(
                    key: _formState,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 45,
                          ),

                          //create a zuwar text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create a ',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000)),
                              ),
                              Text(
                                'Zuwar',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff8DB0BB)),
                              ),
                              Text(
                                ' account ',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000)),
                              ),
                            ],
                          ),
//////////////////////////////////////Email Address
                          SizedBox(
                            height: 30,
                          ),

                          Text(
                            'Email Address',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),

                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              focusNode: filedemail,
                              controller: Your_emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              onTap: () {
                                _scrollController.jumpTo(
                                    _scrollController.position.maxScrollExtent);
                              },
                              onFieldSubmitted: (value) {
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                              onTapOutside: (event) {
                                filedemail.unfocus();
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                              decoration: InputDecoration(
                                hintText: 'Therappertainer@gmail.com',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
////////////////////////////////Phone Number
                          Text(
                            'Phone Number',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),

                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              focusNode: filedphone,
                              controller: Your_phonecontroller,
                              keyboardType: TextInputType.phone,
                              onTap: () {
                                _scrollController.jumpTo(
                                    _scrollController.position.maxScrollExtent);
                              },
                              onFieldSubmitted: (value) {
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                              onTapOutside: (event) {
                                filedphone.unfocus();
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ////////////////////////password
                          Text(
                            'Password',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),

                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              focusNode: filedpass,
                              controller: _passwordController,
                              obscureText: obscureText,
                              onTap: () {
                                _scrollController.jumpTo(
                                    _scrollController.position.maxScrollExtent);
                              },
                              onFieldSubmitted: (value) {
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                              onTapOutside: (event) {
                                filedpass.unfocus();
                                _scrollController.jumpTo(
                                    _scrollController.position.minScrollExtent);
                              },
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                                hintText: '****',
                                hintStyle: TextStyle(color: Colors.black),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password";
                                } else {
                                  //call function to check password
                                  bool result = validatePassword(value);
                                  if (result) {
                                    // create account event
                                    return null;
                                  } else {
                                    return " Password should contain Capital, small letter & Number & Special";
                                  }
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [
                              Checkbox(
                                value: cheakboxpressed,
                                onChanged: (value) {
                                  setState(() {
                                    cheakboxpressed = value!;
                                  });
                                },
                              ),
                              //privecy
                              Row(
                                children: [
                                  Text(
                                    'I agree to the',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffB1835B)),
                                  ),
                                  Text(
                                    'Terms of Service',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff000000)),
                                  ),
                                  Text(
                                    ' and',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xffB1835B)),
                                  ),
                                  Text(
                                    ' Privacy',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff000000)),
                                  ),
                                  Text(
                                    ' Policy',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          //sign up button
                          Center(
                            child: SizedBox(
                              height: 48,
                              width: 270,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formState.currentState!.validate()) {
                                    print('validate');
                                  }
                                  ;
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000)),
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xffA7C1D3)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have a zuwar account?',
                                  style: TextStyle(color: Color(0xff828282)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Log In',
                                      style: TextStyle(
                                          color: Color(0xffA7C1D3),
                                          decoration:
                                              TextDecoration.underline)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
