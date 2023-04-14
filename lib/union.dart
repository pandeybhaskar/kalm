import 'package:flutter/material.dart';

class UnionPage extends StatelessWidget {
  const UnionPage({super.key});

  Widget build(BuildContext context) {
    final device_width = MediaQuery.of(context).size.width;
    final device_height = MediaQuery.of(context).size.height;

    return Container(
        width: device_width,
        height: device_height,
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: device_width,
              height: 70,
              color: Colors.white,
            ),
            SizedBox(
              width: device_width,
              height: 30,
              child: const Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black),
                  child: Text("UNION"),
                ),
              ),
            ),
          ]),
        ]));
  }
}
