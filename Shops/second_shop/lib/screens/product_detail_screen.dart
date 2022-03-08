import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetaelScreen({ Key? key }) : super(key: key);
  final String title;
  static const routeName = '/product-detail';
  ProductDetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    //  final productId=ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("Description of $title "),
      ),
    );
  }
}
