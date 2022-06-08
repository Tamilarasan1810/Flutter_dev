import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/edid_product_screen.dart';
import '../providers/products.dart';

class UserProductItem extends StatelessWidget {
  // const UserProductItem({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  UserProductItem(this.id, this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      // leading: ClipRRect(
      //   borderRadius: BorderRadius.circular(8.0),
      //   child: Image.network(
      //     imageUrl,
      //     height: 150.0,
      //     width: 100.0,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit_rounded),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(EditProductScreen.routeName, arguments: id);
              },
              color: Colors.lightGreen,
            ),
            IconButton(
              icon: Icon(Icons.delete_sharp),
              onPressed: () {
                Provider.of<Products>(context, listen: false).deleteProduct(id);
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
