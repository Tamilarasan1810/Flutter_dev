import 'dart:convert';
import 'package:http/http.dart'as http;
class MonumentModel {
  late String profile;
  late String name;
  late String source;
  late String sourceUrl;
  late String feedback;
  MonumentModel({
    required this.profile,
    required this.name,
    required this.source,
    required this.sourceUrl,
    required this.feedback,
  });
  factory MonumentModel.formMap(Map<String, dynamic> json) {
    return MonumentModel(
      name: json['name'],
      source: json['source'],
      sourceUrl: json['sourceUrl'],
      feedback: json['feedback'],
      profile: json['profile'],
    );
  }
  List<MonumentModel> decodeMonument(String responseBody)
  {
    final parsed=json.decode(responseBody).cast<Map<String,dynamic>>();
    return parsed .map<MonumentModel>((json)=>MonumentModel.formMap(json)).toList();

  }
  Future<List<MonumentModel>> fetchMonument()async{
    final response= await http.get(Uri.parse('https://script.google.com/macros/s/AKfycbw8AKA8hzjgCqVyfzCAgm3JVmbmmEz3kUZZwiaL-lShyY71WlgMGULAtC4biUTNT_iU/exec'));
    if(response.statusCode==200)
    {
      return decodeMonument(response.body);

    }
    else{
      throw Exception('Unable tofetch data from the REST API');
    }
  }
}
