import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ID_Card extends StatelessWidget {
  const ID_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text("Alember Shreesh"),
              Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  // borderRadius: BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.cyan),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 250,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(180),
                            bottomRight: Radius.circular(180),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.cyan,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            "Alember Shreesh",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 230,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(200),
                            topRight: Radius.circular(200),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("ID NO: 21122112",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Phone No: 98000",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("DOB: 2001/04/25",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
