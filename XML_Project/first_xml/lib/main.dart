import 'dart:convert';

import 'package:flutter/material.dart';

import 'Model/Contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var contact_data;

  void initState() {
    Future<void> getContactsFromJson(BuildContext context) async {
      String jsonString = await DefaultAssetBundle.of(context)
          .loadString("assets/contact_data.json");
      //List<dynamic> raw = jsonDecode(jsonString);
      Map<String, dynamic> raw = jsonDecode(jsonString);
      contact_data = Contact.fromJSON(raw);
    }
  }

  Future<void> getContactsFromJson(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString("assets/contact_data.json");
    //List<dynamic> raw = jsonDecode(jsonString);
    Map<String, dynamic> raw = jsonDecode(jsonString);
    contact_data = Contact.fromJSON(raw);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first xml"),
      ),
      body: Container(
        child: FutureBuilder(
            future: getContactsFromJson(context),
            builder: (context, data) {
              if (data.hasData) {
                return ListView.builder(
                    itemCount: contact_data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          contact_data[index].name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          contact_data[index].email,
                        ),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
