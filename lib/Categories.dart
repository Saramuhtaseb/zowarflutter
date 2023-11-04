import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List categories = [
    'Archaeological',
    'Adventure',
    'Therapeutic',
    'Picnic',
    'Museum',
    'castle',
    'Sea',
    'Mountain',
    'Forest'
  ];
  catego({required child}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 54,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xffAEC1C5),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
      ),
      child: Center(child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) => catego(
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        // MaterialPageRoute(
                        //   builder: (context) => feed(index),
                        // ),
                        // );
                      },
                      child: Text(
                        categories[index].toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                ),
              )),

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
                      Icons.chat_bubble_outline_rounded,
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
    );
  }
}
