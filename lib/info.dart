import 'package:flutter/material.dart';

class Profile_information extends StatefulWidget {
  const Profile_information({super.key});

  @override
  State<Profile_information> createState() => _Profile_informationState();
}

class _Profile_informationState extends State<Profile_information> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
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
                // focusNode: fileduser,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
