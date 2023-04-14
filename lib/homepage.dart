import 'package:flutter/material.dart';
import 'package:medical_health_platform/faq.dart';
import 'package:medical_health_platform/form.dart';
import 'package:medical_health_platform/union.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var _formState = 0;
    bool _faqState = false;
    bool _unionState = false;
   final deviceWidth = MediaQuery.of(context).size.width;
   final deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Container(
          width: deviceWidth,
          height: 70,
          color: const Color.fromRGBO(217, 217, 217, 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap:(){
                  setState(() {
                    _formState = _formState+1;
                  });
                  print(_formState);
        },
        //             onTap:() {
        //           Navigator.of(context).push(MaterialPageRoute(
        //               builder: (context) => const FormPage()));
        //         },
                child: SizedBox(
                  // width: device_width,
                  height: 80,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/form.png'),
                        const Text("Form")
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FaqPage()));
                },
                child: SizedBox(
                  // width: device_width,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.question_mark_sharp),
                      Text("FAQ")
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UnionPage()));
                },
                child: SizedBox(
                  // width: device_width,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Icon(Icons.group_sharp), Text("Union")],
                  ),
                ),
              )
            ],
          ),
        ),
        body: HomepageStateless(deviceWidth, deviceHeight),
      ),
    );
  }
}

class HomepageStateless extends StatelessWidget{
  const HomepageStateless(double deviceWidth, double deviceHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      width: deviceWidth,
      height: deviceHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 1),
            colors: <Color>[
              Color(0xffb2d3f4),
              Color(0xffb2d3f4),
              Color(0xffb2d3f4),
              Color(0xffb2d3f4),
              Color(0xffb2d3f4),
              Color(0xffecf2f8),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: deviceWidth,
                height: 70,
                color: Color(0xffb2d3f4),
              ),
              SizedBox(
                width: deviceWidth,
                height: 30,
                child: const Center(
                  child: DefaultTextStyle(
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black),
                    child: Text("Good Morning, Avi!"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: SizedBox(
                  width: deviceWidth,
                  height: 30,
                  child: const Center(
                    child: DefaultTextStyle(
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                      child: Text("Today's Stats:"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Unread Messages",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "00",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                          child: Text(
                            "Union Counselors",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                          child: Text(
                            "10",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                          child: Text(
                            "Total Users",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                          child: Text(
                            "120",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}
