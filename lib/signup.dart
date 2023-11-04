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
  TextEditingController Your_usernamecontroller = TextEditingController();
  TextEditingController Your_emailcontroller = TextEditingController();

  final _formState = GlobalKey<FormState>();

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
              Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 249, 246),
                    borderRadius: BorderRadius.all(Radius.circular(45)),
                  ),
                  child: Form(
                    key: _formState,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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

                          Text(
                            'Username',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),
                          //username
                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              controller: Your_usernamecontroller,
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email Address',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),
                          //email
                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              controller: Your_emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(color: Color(0xffB8B8B8)),
                          ),

                          //password
                          SizedBox(
                            height: height * 0.06,
                            width: width * 0.84,
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: obscureText,
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
                                    'I agree to the ',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffB1835B)),
                                  ),
                                  Text(
                                    'Terms of Service ',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff000000)),
                                  ),
                                  Text(
                                    'and ',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffB1835B)),
                                  ),
                                  Text(
                                    ' Privacy Policy  ',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff000000)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //login button
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
                                      'Login',
                                      style: TextStyle(color: Colors.black),
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
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have a zuwar account?',
                                  style: TextStyle(color: Color(0xff828282)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('login',
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
