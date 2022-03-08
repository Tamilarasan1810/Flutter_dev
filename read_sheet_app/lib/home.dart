import 'package:flutter/material.dart';


import 'model.dart';


  Widget monumentList( List<MonumentModel> monumentList) {
    return ListView.builder(
          itemCount: monumentList.length,
          itemBuilder: (context, index) {
            return Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "|| " + monumentList[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Container(
                        child: Image.network(monumentList[index].profile),
                      ),
                      Container(
                        child: Text(
                          '\n' + monumentList[index].name,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
          });
  }


class MyHomePage extends StatelessWidget {
  late final Future<List<MonumentModel>> monuments;

  //const MyHomePage({required Key key, required this.monuments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Monument"),
        ),
        body: Center(
      child: FutureBuilder<List<MonumentModel>>(
        future: monuments,
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? monumentList(snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    ));
  }
}