class ProductDataModel {
  int? id;
  String? name;
  String? category;
  String? imageUrl;
  String? oldPrice;
  String? price;
  ProductDataModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.oldPrice,
    required this.price,
  });

  // now we need to convert this json to into a data
  ProductDataModel.formJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    category = json['category'];
    imageUrl = json['imageUrl'];
    oldPrice = json['oldPrice'];
    price = json['price'];
  }
}
