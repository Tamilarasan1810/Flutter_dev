import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../feedback_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FeedbackModel> feedbacks = <FeedbackModel>[];
  var raw =
      ("https://script.google.com/macros/s/AKfycbw8AKA8hzjgCqVyfzCAgm3JVmbmmEz3kUZZwiaL-lShyY71WlgMGULAtC4biUTNT_iU/exec");

  getFeedbackFromSheet() async {
    http.Response url = await http.get(Uri.parse(raw));
    var jsonFeedback = convert.jsonDecode(url.body);
    print('this is form Json: $jsonFeedback');

    //feedbacks = jsonFeedback.map((json) => FeedbackModel.fromJson(json));
    jsonFeedback.forEach((element) {
      print(element);
      FeedbackModel feedbackModel = new FeedbackModel();
      feedbackModel.name = element['name'];
      feedbackModel.feedback = element['feedback'];
      feedbackModel.profilePic = element['profile'];
      feedbackModel.source = element['source'];
      feedbackModel.sourceUrl = element['sourceUrl'];
      feedbacks.add(feedbackModel);
      // print(feedbacks.length);
    });
    // print(feedbacks[0]);
  }

  @override
  void initState() {
    getFeedbackFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students'),
        elevation: 0,
      ),
      body: Container(
          child: ListView.builder(
              itemCount: feedbacks.length,
              itemBuilder: (context, index) {
                return FeedbackTile(
                  profilePic: feedbacks[index].profilePic,
                  name: feedbacks[index].name,
                  feedback: feedbacks[index].feedback,
                  sourceUrl: feedbacks[index].sourceUrl,
                  source: feedbacks[index].source,
                );
              })),
    );
  }
}

class FeedbackTile extends StatelessWidget {
  final String profilePic, name, source, feedback, sourceUrl;
  FeedbackTile({
    this.profilePic,
    this.name,
    this.source,
    this.feedback,
    this.sourceUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Image.network(profilePic),
            ],
          ),
        ],
      ),
    );
  }
}
