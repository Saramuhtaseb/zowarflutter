import 'package:flutter/material.dart';
import 'package:zowar/Password/changePassword.dart';
import 'package:zowar/Profile/edit.dart';
import 'package:zowar/login.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Profile ',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // دائرة الصورة الشخصية
                  Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Color(0xff8AB0B5),
                    ),
                  ),

                  Text(
                    'username ',
                    style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  ExpansionTile(
                    expandedAlignment: Alignment.topLeft,
                    title: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => edit(),
                            ),
                          );
                        },
                        child: Text(
                          'Personal Information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Changepassword(),
                              ),
                            );
                          },
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
                          );
                        },
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  ExpansionTile(
                    expandedAlignment: Alignment.topLeft,
                    title: Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    children: [
                      // TextButton(
                      //   onPressed: () {
                      //     // Navigator.of(context).push(
                      //     //   MaterialPageRoute(
                      //     //     builder: (context) => Login(),
                      //     //   ),
                      //     // );
                      //   },
                      //   child: Text(
                      //     'Language',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 16,
                      //     ),
                      //   ),
                      // ),
                      // TextButton(
                      //   onPressed: () {
                      //     // Navigator.of(context).push(
                      //     //   MaterialPageRoute(
                      //     //     builder: (context) => Login(),
                      //     //   ),
                      //     // );
                      //   },
                      //   child: Text(
                      //     'Notification Settings',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 16,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
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
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'favorite places',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => Login(),
                      //   ),
                      // );
                    },
                    child: Row(
                      children: [
                        // SizedBox(
                        //   height: 20,
                        //   width: 20,
                        //   child: Image.asset(
                        //     'assets/images/Booked.png',
                        //   ),
                        // ),

                        Icon(
                          Icons.event_available,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'Booked Trips',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => Login(),
                      //   ),
                      // );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.contact_support_outlined,
                          color: Color(0xff797979),
                        ),
                        Text(
                          'Support',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                  //////////////////////////////////// االشريط السفلي ///////////////////////////////////////////
                  BottomAppBar(
                    color: Colors.white,
                    height: height * 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notification_add,
                              color: Color(0xff8AB0B5),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list_alt,
                              color: Color(0xff8AB0B5),
                            )),
                        // IconButton(onPressed: () {}, ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              // Icons.,
                              Icons.center_focus_weak,
                              color: Color(0xff8AB0B5),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              color: Color(0xff39757D),
                            )),
                      ],
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////////////////////////////////////////
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
