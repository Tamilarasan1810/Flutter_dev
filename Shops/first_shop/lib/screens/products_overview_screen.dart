import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_grid.dart';

class ProductOverViewScreen extends StatelessWidget {
  //const ProductOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: ProductGrid(),
    );
  }
}
