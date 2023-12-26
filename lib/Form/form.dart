import 'package:flutter/material.dart';

enum Gender { MALE, FEMALE, OTHER }

class UniversityForm extends StatefulWidget {
  const UniversityForm({super.key});

  @override
  State<UniversityForm> createState() => _UniversityFormState();
}

class _UniversityFormState extends State<UniversityForm> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPhoneNoController = TextEditingController();
  TextEditingController userAddressController = TextEditingController();
  double sliderValue = 50;
  bool checkboxState = false;
  Gender selectedGender = Gender.MALE;
  static List<String> faculties = [
    'BCA',
    'BSC',
    'CSIT',
    'BBA',
  ];
  String selectedFaculties = faculties.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(children: [
          Text(
            "University Admission Form",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "1. Personal Information",
          ),
          TextFormField(
            controller: userNameController,
            decoration: InputDecoration(labelText: 'Full Name'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                child: TextFormField(
                  controller: userEmailController,
                  decoration: InputDecoration(labelText: 'Date of Birth'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      Text("MALE"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: Gender.FEMALE,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          }),
                      Text("FEMALE"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: Gender.OTHER,
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          }),
                      Text("OTHERS"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Select Faculties :",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 20,
              ),
              DropdownButton(
                  menuMaxHeight: 400,
                  value: selectedFaculties,
                  items: faculties
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedFaculties = value ?? "nothing";
                    });
                  }),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text("2. Contact Information"),
          TextFormField(
            controller: userEmailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextFormField(
            controller: userPhoneNoController,
            decoration: InputDecoration(labelText: "Phone Number"),
          ),
          TextFormField(
            controller: userAddressController,
            decoration: InputDecoration(labelText: "Address"),
          ),
          Row(
            children: [
              Checkbox(
                  value: checkboxState,
                  onChanged: (value) {
                    setState(() {
                      checkboxState = !checkboxState;
                    });
                  }),
              Text(
                "Agree to terms and conditions",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
