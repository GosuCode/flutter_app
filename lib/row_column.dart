import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 170,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 43, 42, 40),
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 170,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 9, 149),
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 270,
                width: 190,
                // color: Color.fromARGB(255, 17, 149, 61),
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.blue)),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 270,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 121, 125, 171),
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 204, 205, 215),
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 206, 117, 44),
                    border: Border.all(color: Colors.blue)),
              ),
              Container(
                height: 170,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 250, 16, 16),
                    border: Border.all(color: Colors.blue)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 100,
          //       width: 195,
          //       color: Colors.cyanAccent,
          //     ),
          //     Container(
          //       height: 100,
          //       width: 195,
          //       color: Colors.pink,
          //     ),
          //   ],
          // )
          // Container(
          //   height: 100,
          //   width: 200,
          //   color: Colors.orangeAccent,
          // ),
          // Container(
          //   height: 100,
          //   width: double.maxFinite,
          //   color: Colors.purpleAccent,
          // ),

//column - main axis alignment and cross axis alignment
//row - main axis alignment and cross axis alignment
