import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  // final _formState = GlobalKey<FormState>();
  bool isDark = false;
  List categories = [
    'Archaeological',
    'Adventure',
    'Therapeutic',
    'Picnic',
    'Museum',
    'castle',
    'Sea',
    'Mountain',
    'Forest',
  ];
  List<Container> toptrip = [
    Container(
      margin: const EdgeInsets.all(10),
      height: 110.51,
      width: 102.58,
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
      ),
    )
  ];
  List<Container> trip = [
    Container(
      margin: const EdgeInsets.all(10),
      height: 126,
      width: 141,
      decoration: BoxDecoration(
          color: const Color(0xffAEC1C5),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: const Color(0xff39757D))),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
      ),
    ),
  ];
  List<Container> Challenge = [
    Container(
      margin: const EdgeInsets.all(10),
      height: 110.51,
      width: 102.58,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: const Color(0xff39757D))),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
      ),
    ),
  ];
  categore({required child}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: const Color(0xffAEC1C5),
          borderRadius: const BorderRadius.all(Radius.circular(26.67)),
          border: Border.all(color: const Color(0xff39757D))),
      child: child,
    );
  }

  toptrips({required child}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 110.51,
      width: 102.58,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.black),
      ),
      child: child,
    );
  }

  trips({required child}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 133,
      width: 342,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
    );
  }

  challenges({required child}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 257,
      width: 109,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Colors.black),
      ),
      child: child,
    );
  }

  // chall({required child}) {
  //   return Container(
  //     margin: EdgeInsets.all(10),
  //     height: 257,
  //     width: 109,
  //     decoration: BoxDecoration(
  //       color: Color(0xffFFFFFF),
  //       borderRadius: BorderRadius.all(Radius.circular(20)),
  //       border: Border.all(color: Colors.black),
  //     ),
  //     child: SizedBox(
  //       height: 110.51,
  //       width: 102.58,
  //       child: ElevatedButton(
  //         onPressed: () {},
  //         child: child,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      //////////////bottom bar/////////////
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(
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
        left: false,
        right: false,
        bottom: false,
        minimum: EdgeInsets.only(top: 40),
        child: Center(
          child: SizedBox(
            height: height * .95,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ////logo//////
                  SizedBox(
                    height: height * 0.13,
                    width: width * 0.3,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  //scan
                  Transform.translate(
                    offset: Offset(165, -90),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.center_focus_weak,
                        size: 40,
                        color: Color(0xff8AB0B5),
                      ),
                    ),
                  ),

                  // search
                  SizedBox(
                    width: width * 0.9,
                    child: SearchAnchor(
                      isFullScreen: false,
                      builder:
                          (BuildContext context, SearchController controller) {
                        return SearchBar(
                          controller: controller,
                          shadowColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                            BorderSide(
                              color: Color(0xff636363),
                            ),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          surfaceTintColor:
                              MaterialStatePropertyAll(Colors.transparent),

                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 16.0)),
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: const Icon(Icons.search),
                          hintText: 'Search',
                          // backgroundColor: const MaterialStatePropertyAll<Color>(
                          //     Color(0xff8AB0B5)),
                        );
                      },
                      suggestionsBuilder:
                          (BuildContext context, SearchController controller) {
                        return List<ListTile>.generate(
                          5,
                          (int index) {
                            final String item = 'item $index';
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                setState(() {
                                  controller.closeView(item);
                                });
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ////////////Categories
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'see all',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: categories.length,
                            itemBuilder: (context, index) => categore(
                              child: Center(
                                child: Text(
                                  categories[index].toString(),
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff000000)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ////////toptrip
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Top Trips',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'see all',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xffA2A2A2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 112,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: toptrip.length,
                            itemBuilder: (context, index) => toptrips(
                              child: Center(
                                child: Container(
                                  child: toptrip[index],
                                ),
                              ),
                            ),
                          ),
                        ),

                        ////////trips///////
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trips',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'see all',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 133,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: trip.length,
                            itemBuilder: (context, index) => trips(
                              child: Center(
                                child: Row(
                                  children: [
                                    Container(child: trip[index]),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 20,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            /////استخدمت ال list categories عشان بدي قائمة فيها نص
                                            categories[index].toString(),
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            /////استخدمت ال list categories عشان بدي قائمة فيها نص
                                            categories[index].toString(),
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff000000)),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.person,
                                                  color: Color(0xff636363)),
                                              Text(
                                                '20',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xff8AB0B5)),
                                              ),
                                              Text('/'),
                                              Text('50'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        ///////////Challenges///////////

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Challenges',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'see all',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 257,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            // physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: Challenge.length,
                            itemBuilder: (context, index) => challenges(
                              child: Center(
                                child: Column(
                                  children: [
                                    Container(child: Challenge[index]),
                                    Text(
                                      /////استخدمت ال list categories عشان بدي قائمة فيها نص
                                      categories[index].toString(),
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      /////استخدمت ال list categories عشان بدي قائمة فيها نص
                                      categories[index].toString(),
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff000000)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
