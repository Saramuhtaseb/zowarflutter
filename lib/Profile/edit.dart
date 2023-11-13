import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
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

  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);
  FocusNode fileduser = FocusNode();
  FocusNode filedpass = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble,
                  color: Color(0xff8AB0B5),
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list_alt,
                  color: Color(0xff8AB0B5),
                )),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.done,
                color: Color(0xff8AB0B5),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff8AB0B5),
                  )),
              label: ''),
        ],
        selectedItemColor: Color(0xff39757D),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //////////arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Center(
                    child: SizedBox(
                      width: width * 0.2,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Edit profile',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000)),
                    ),
                  ),
                ],
              ),
              /////////////////////////////////////////////////////////////Full Name
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      onTap: () {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      },
                      onFieldSubmitted: (value) {
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      onTapOutside: (event) {
                        filedpass.unfocus();
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: ' Full Name',
                      ),
                    ),
                  ),
                ],
              ),
              ///////////////////////////User Name

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      onTap: () {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      },
                      onFieldSubmitted: (value) {
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      onTapOutside: (event) {
                        filedpass.unfocus();
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: ' User Name',
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onTap: () {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      },
                      onFieldSubmitted: (value) {
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      onTapOutside: (event) {
                        filedpass.unfocus();
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: ' Email',
                      ),
                    ),
                  ),
                ],
              ),
              ////////////////// Phone Number
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      onTap: () {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      },
                      onFieldSubmitted: (value) {
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      onTapOutside: (event) {
                        filedpass.unfocus();
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        // prefixIcon: Icon(Icons.border_color_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: 'Phone Number',
                      ),
                    ),
                  ),
                ],
              ),

              ///////////////////Birthday
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onTap: () {
                        //   _scrollController.jumpTo(
                        //       _scrollController.position.maxScrollExtent);
                        // },
                        // onFieldSubmitted: (value) {
                        //   _scrollController.jumpTo(
                        //       _scrollController.position.minScrollExtent);
                        // },
                        // onTapOutside: (event) {
                        //   filedpass.unfocus();
                        //   _scrollController.jumpTo(
                        //       _scrollController.position.minScrollExtent);
                        //
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: ' Birthday',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.border_color_outlined),
                          onPressed: () {
                            CupertinoButton(
                              child: Text(
                                  '${dateTime.month}-${dateTime.day}-${dateTime.year}'),
                              onPressed: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (BuildContext context) => SizedBox(
                                    height: 250,
                                    child: CupertinoDatePicker(
                                      backgroundColor: Colors.white,
                                      initialDateTime: dateTime,
                                      onDateTimeChanged: (DateTime newTime) {
                                        setState(() => dateTime = newTime);
                                      },
                                      use24hFormat: true,
                                      mode: CupertinoDatePickerMode.date,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),

                        /*suffixIcon: GestureDetector(onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        }),
                        */
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),
              /////////////////////////Country &
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.065,
                    width: width * 0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xffF3F8FF)),
                    child: Center(
                      child: DropdownButton(
                        items: [
                          // List Of DropdowmMenuItem
                          DropdownMenuItem<String>(
                            // Value Returned
                            value: "1",
                            // Value Displayed
                            child: Center(
                              child: Text("Jordan"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            // Value Returned
                            value: "2",
                            // Value Displayed
                            child: Center(
                              child: Text("palestine"),
                            ),
                          ),
                        ],
                        onChanged: (_value) => {
                          print(_value),
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => (),
                          //   ),
                          // ),
                        },
                        hint: Text(
                          'Country',
                          style: TextStyle(color: Color(0xff757575)),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        focusColor: Color(0xff787878),
                      ),
                    ),

                    // child: ElevatedButton(
                    //   onPressed: () {},
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       // Icon(Icons.arrow_drop_down,
                    //       //     color: Color(0xff757575)),
                    //     ],
                    //   ),
                    //   // style: ButtonStyle(
                    //   //     backgroundColor:
                    //   //         MaterialStatePropertyAll(Color(0xffF3F8FF)),
                    //   //     shape: MaterialStatePropertyAll(
                    //   //         RoundedRectangleBorder(
                    //   //             borderRadius: BorderRadius.all(
                    //   //                 Radius.circular(8))))),
                    // ),
                  ),
                  //////////////////////////Genre
                  Container(
                    margin: EdgeInsets.all(5),
                    height: height * 0.065,
                    width: width * 0.42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xffF3F8FF)),
                    child: Center(
                      child: DropdownButton(
                        items: [
                          // List Of DropdowmMenuItem
                          DropdownMenuItem<String>(
                            // Value Returned
                            value: "1",
                            // Value Displayed
                            child: Center(
                              child: Text("Male"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            // Value Returned
                            value: "2",
                            // Value Displayed
                            child: Center(
                              child: Text("Female"),
                            ),
                          ),
                        ],
                        onChanged: (_value) => {
                          print(_value),
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => (),
                          //   ),
                          // ),
                        },
                        hint: Text(
                          'Gener',
                          style: TextStyle(color: Color(0xff757575)),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20),
                  //   height: height * 0.065,
                  //   width: width * 0.44,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           'Genre',
                  //           style: TextStyle(color: Color(0xff757575)),
                  //         ),
                  //         Icon(Icons.arrow_drop_down,
                  //             color: Color(0xff757575)),
                  //       ],
                  //     ),
                  //     style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStatePropertyAll(Color(0xffF3F8FF)),
                  //         shape: MaterialStatePropertyAll(
                  //             RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.all(
                  //                     Radius.circular(8))))),
                  //   ),
                  // ),
                ],
              ),
              ////////////////////address
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.9,
                    child: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      onTap: () {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      },
                      onFieldSubmitted: (value) {
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      onTapOutside: (event) {
                        filedpass.unfocus();
                        _scrollController
                            .jumpTo(_scrollController.position.minScrollExtent);
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF3F8FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: ' Address',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              /////////////////////SUBMIT
              Center(
                child: Container(
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
                          'SUBMIT',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff8AB0B5)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
              ),
              // CupertinoButton(
              //   child: Text(
              //       '${dateTime.month}-${dateTime.day}-${dateTime.year}'),
              //   onPressed: () {
              //     showCupertinoModalPopup(
              //       context: context,
              //       builder: (BuildContext context) => SizedBox(
              //         height: 250,
              //         child: CupertinoDatePicker(
              //           backgroundColor: Colors.white,
              //           initialDateTime: dateTime,
              //           onDateTimeChanged: (DateTime newTime) {
              //             setState(() => dateTime = newTime);
              //           },
              //           use24hFormat: true,
              //           mode: CupertinoDatePickerMode.date,
              //         ),
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
