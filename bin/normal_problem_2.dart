class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> result = {};

  for (Product product in products) {
    if (result.containsKey(product.category)) {
      result[product.category] = result[product.category]! + product.price;
    } else {
      result[product.category] = product.price;
    }
  }

  return result;
}

void main() {
  List<Product> products = [
    Product("Apple", "Fruit", 2.5),
    Product("Banana", "Fruit", 1.5),
    Product("Milk", "Dairy", 3.0),
    Product("Cheese", "Dairy", 5.0),
  ];

  Map<String, double> result = totalByCategory(products);

  print(result);
}
