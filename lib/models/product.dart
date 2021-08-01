import 'dart:convert';

class Product {
  String name;
  num price;
  String picture;
  int quantity;
  Product({
    this.name,
    this.price,
    this.picture,
    this.quantity,
  });

  Product copyWith({
    String name,
    int price,
    String picture,
    int quantity,
  }) {
    return Product(
      name: name ?? this.name,
      price: price ?? this.price,
      picture: picture ?? this.picture,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'picture': picture,
      'quantity': quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'],
      price: map['price'],
      picture: map['picture'],
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(name: $name, price: $price,  picture: $picture, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.name == name &&
        other.price == price &&
        other.picture == picture &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return name.hashCode ^ price.hashCode ^ picture.hashCode ^ quantity.hashCode;
  }
}
