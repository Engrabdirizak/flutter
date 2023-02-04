import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController city = TextEditingController();
  TextEditingController room = TextEditingController();

  String PRCvalue = "20";

  String cityCvalue = "Mogadishu";
  String roomvalue = "singleroom";
  bool isLoading = false;

  saveUser() async {
    isLoading = true;
    setState(() {});
    try {
      await FirebaseFirestore.instance.collection("customer").add({
        "name": name.text,
        "email": email.text,
        "phone": phone.text,
        "PRCvalue": PRCvalue,
        "cityCvalue": cityCvalue,
        "roomvalue": roomvalue,
      });

      print("SUCCESS");
    } catch (e) {
      print(e);
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 210, 109, 241),
            title: Text("Register"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "Name", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: "E-mail", border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: phone,
                    decoration: InputDecoration(
                        hintText: "Phone", border: OutlineInputBorder()),
                  ),
                  SizedBox(width: 50.0),
                  DropdownButton<String>(
                    value: PRCvalue,
                    icon: Icon(Icons.arrow_downward),
                    hint: Text("enter price "),
                    items: [
                      DropdownMenuItem(
                        value: "20",
                        child: Text("20 dollar"),
                      ),
                      DropdownMenuItem(
                        value: "30",
                        child: Text("30 dollar"),
                      ),
                      DropdownMenuItem(
                        value: "40",
                        child: Text("40 dollar"),
                      )
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        PRCvalue = newValue.toString();
                      });
                    },
                  ),
                  SizedBox(width: 50.0),
                  DropdownButton<String>(
                    value: roomvalue,
                    icon: Icon(Icons.arrow_downward),
                    hint: Text("How many room "),
                    items: [
                      DropdownMenuItem(
                        value: "singleroom",
                        child: Text("single room"),
                      ),
                      DropdownMenuItem(
                        value: "double room",
                        child: Text("double room"),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        roomvalue = newValue.toString();
                      });
                    },
                  ),
                  SizedBox(width: 50.0),
                  DropdownButton<String>(
                    value: cityCvalue,
                    icon: Icon(Icons.arrow_downward),
                    hint: Text("Choose city you want to travel"),
                    items: [
                      DropdownMenuItem(
                        value: "Mogadishu",
                        child: Text("Mogadishu"),
                      ),
                      DropdownMenuItem(
                        value: "Hargeysa",
                        child: Text("Hargeysa"),
                      ),
                      DropdownMenuItem(
                        value: "kismayo",
                        child: Text("kismayo"),
                      ),
                      DropdownMenuItem(
                        value: "Baydhabo",
                        child: Text("Baydhabo"),
                      ),
                      DropdownMenuItem(
                        value: "Garowe",
                        child: Text("Garowe"),
                      )
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        cityCvalue = newValue.toString();
                      });
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () => saveUser(),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 210, 109, 241),
                            elevation: 0,
                            shape: StadiumBorder()),
                        child: isLoading
                            ? CircularProgressIndicator(
                                backgroundColor: Colors.white,
                              )
                            : Text("Book NOW")),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
