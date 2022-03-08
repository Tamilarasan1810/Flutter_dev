import 'package:flutter/material.dart';
import 'package:sheet_api_app/controller.dart';

import 'model/feedback_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

//TextField Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobilenoController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FeedbackForm feedbackForm = FeedbackForm(
        name: nameController.text,
        email: emailController.text,
        mobileno: mobilenoController.text,
        feedback: feedbackController.text,
      );
      FormController formController = FormController(
        (String response) {
          print(response);
          // if (response == FormController.STATUS_SUCCESS) {
          //   _showSnackbar("Feedback Sumbitted");
          // } else {
          //   _showSnackbar("Error Occured!");
          // }
          _showSnackbar("Feedback Sumbitted");
        },
      );

      _showSnackbar('Submitting Feedback');
      formController.submitForm(feedbackForm);
    }
  }

  _showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
    );
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text("Sign In"),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid Name";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'User Name',
                ),
              ),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid Email";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Email Id',
                ),
              ),
              TextFormField(
                controller: mobilenoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter valid Number";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'MobileNumber',
                ),
              ),
              TextFormField(
                controller: feedbackController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter some Feedback";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'FeedBack',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: _submitForm,
                    child: const Text('Submit Feedback'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
