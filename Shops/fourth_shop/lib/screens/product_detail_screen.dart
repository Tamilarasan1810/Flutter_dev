//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetaelScreen({ Key? key }) : super(key: key);
  //final String id;
  static const routeName = '/product-detail';
  //ProductDetailScreen(this.id);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    //.items.firstWhere((prod) => prod.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${loadedProduct.title}'),
      ),
      body: Center(
        child: Text("Description of ${loadedProduct.id} "),
      ),
    );
  }
}


//
// //
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../providers/products.dart';

// class ProductDetailScreen extends StatelessWidget {
//   // final String title;
//   // final double price;

//   // ProductDetailScreen(this.title, this.price);
//   static const routeName = '/product-detail';

//   @override
//   Widget build(BuildContext context) {
//     final productId =
//         ModalRoute.of(context).settings.arguments as String; // is the id!
//     final loadedProduct = Provider.of<Products>(
//       context,
//       listen: false,
//     ).items.firstWhere((prod) => prod.id == productId);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(loadedProduct.title),
//       ),
//     );
//   }
// }