import 'package:sheet_api_app/model/feedback_form.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FormController {
  final void Function(String) callback;
  var URL =
      ('https://script.google.com/macros/s/AKfycbxaP4DprFVGr-BwFdCAM0QDWGYFUY19V0oPoYzikqAC2swItlMuG_f16DwEGB_cW_IP/exec');
  static const STATUS_SUCCESS = "SUCCESS";

  FormController(this.callback);

  void submitForm(FeedbackForm feedbackForm) async {
    URL += feedbackForm.toParameters(); //  **
    Uri uri = Uri.parse(URL); // **
    try {
      await http.get(uri).then(
          /* https://quabr.com/67810207/showing-error-the-operator-isnt-defined-for-the-type-uri-try-defining-t */
          (response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
