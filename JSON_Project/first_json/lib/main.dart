import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Model/product_Data_Model.dart';

//import 'package:flutter/services.dart' as rootBundle;
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // to read data form json
  // it may take some time so make it Future
  Future<List<ProductDataModel>> ReadJsonData() async {
    //import service as rootbundle
    final jsonData = await rootBundle.loadString('assets/Product.json');
    final raw = json.decode(jsonData) as List<dynamic>;

    return raw
        .map((data) => ProductDataModel.formJson(data))
        .where((element) => element.category == "Men")
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screen_width = MediaQuery.of(context).size.width - 4;
    var scard = screen_width - 230;
    var tcard = screen_width - scard - 35;
    return Scaffold(
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Container(
              child: Row(
                children: <Widget>[
                  Center(
                    child: Text(
                        "There is some problem in reading data \n please try to resolve it !!!"),
                  ),
                  Center(
                      child: CircularProgressIndicator(
                    color: Colors.red,
                  )),
                ],
              ),
            );
          } else if (data.hasData) {
            var items = data.data as List<ProductDataModel>;

            return ListView.builder(
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 5,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: scard,
                          child: Card(
                            elevation: 5,
                            child: Container(
                              child: Image(
                                  image: NetworkImage(
                                    items[index].imageUrl.toString(),
                                  ),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Card(
                          color: Color.fromARGB(255, 142, 244, 146),
                          child: Container(
                            width: tcard,
                            margin: EdgeInsets.all(2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          items[index].name.toString(),
                                          softWrap: false,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(172, 147, 4, 61),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          '\u{20B9} ${items[index].price.toString()}',
                                          softWrap: false,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(172, 93, 97, 92),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}





///
////////
/////////
///

// class _MyHomePageState extends State<MyHomePage> {
//   // to read data form json
//   // it may take some time so make it Future
//   Future<List<ProductDataModel>> ReadJsonData() async {
//     //import service as rootbunle
//     final jsonData = await rootBundle.loadString('assets/Product.json');
//     final raw = json.decode(jsonData) as List<dynamic>;

//     return raw.map((data) => ProductDataModel.formJson(data)).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: ReadJsonData(),
//         builder: (context, data) {
//           if (data.hasError) {
//             return Container(
//               child: Row(
//                 children: <Widget>[
//                   Center(
//                     child: Text(
//                         "There is some problem in reading data \n please try to resolve it !!!"),
//                   ),
//                   Center(
//                       child: CircularProgressIndicator(
//                     color: Colors.red,
//                   )),
//                 ],
//               ),
//             );
//           } else if (data.hasData) {
//             var items = data.data as List<ProductDataModel>;
//             return ListView.builder(
//                 itemCount: items == null ? 0 : items.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: Color.fromARGB(255, 106, 250, 111),
//                     child: Card(
//                       elevation: 5,

//                       //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                       child: Container(
//                         color: Color.fromARGB(255, 229, 99, 90),
//                         height: 100,
//                         padding: EdgeInsets.all(5),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: <Widget>[
//                             Container(
//                               width: 50,
//                               height: 50,
//                               child: Image(
//                                   image: NetworkImage(
//                                     items[index].imageUrl.toString(),
//                                   ),
//                                   fit: BoxFit.fill),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 padding: EdgeInsets.all(8),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.only(left: 8, right: 8),
//                                       child: Text(
//                                         items[index].name.toString(),
//                                         style: TextStyle(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.only(left: 8, right: 8),
//                                       child: Text(
//                                         items[index].price.toString(),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 });
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

