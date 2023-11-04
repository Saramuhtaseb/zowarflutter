import 'package:flutter/material.dart';

class feed extends StatefulWidget {
  const feed({super.key});

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
  List feed = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  catego({required child}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 125,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xffF7F1E7),
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
                  itemBuilder: (context, index) =>
                      catego(child: Text(feed[index].toString())),
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
    );
  }
}
