import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Gender { MALE, FEMALE, OTHERS }

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController userNameController = TextEditingController();
  bool checkboxState = false;
  double sliderValue = 10;
  Gender selectedGender = Gender.MALE;
  static List<String> fruits = ["Apple", "Orange", "Alu"];
  String selectedFruits = fruits.first;

  late SharedPreferences sharedPreferences;
  getInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    userNameController.value;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              width: 300,
              child: TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.name,
                // obscureText: true,
                // obscuringCharacter: "#",
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: "Enter your name",
                  helperText: "Helper Text",
                  suffix: Icon(Icons.person),
                ),
              ),
            ),
          ),
          Checkbox(
              value: checkboxState,
              onChanged: (value) {
                setState(() {
                  checkboxState = !checkboxState;
                });
              }),
          Slider(
              min: 0,
              max: 100,
              value: sliderValue,
              label: "Slider",
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              }),
          Text(sliderValue.toStringAsFixed(2)),
          Row(
            children: [
              Radio(
                  value: Gender.MALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  }),
              Radio(
                  value: Gender.FEMALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  }),
              Radio(
                  value: Gender.OTHERS,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  }),
            ],
          ),
          DropdownButton(
              menuMaxHeight: 400,
              value: selectedFruits,
              items: fruits
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedFruits = value ?? "nothing";
                });
              }),
          ElevatedButton(
              onLongPress: () async {
                await sharedPreferences.setString(
                    "userName", userNameController.text);
              },
              onPressed: () {
                log(userNameController.value.toString());
                log(userNameController.text);
                log(checkboxState.toString());
                log(sliderValue.toString());
                log(selectedGender.name.toString());
                log(selectedFruits.toString());
              },
              child: Text("save Form")),
          ElevatedButton(
              onPressed: () async {
                print(sharedPreferences.getString("userName"));
              },
              child: Text("show data")),
          Text(userNameController.text),
          Text(checkboxState.toString()),
          Text(sliderValue.toStringAsFixed(2)),
          Text(selectedFruits.toString()),
        ],
      ),
    );
  }
}
