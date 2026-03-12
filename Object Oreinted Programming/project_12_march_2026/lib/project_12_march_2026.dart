class Product {
  final int Id;
  final String Name;
  final double Price;

  Product({required this.Id, required this.Name, required this.Price});
}

Product product_one = Product(Id: 1001, Name: "samsung", Price: 11100);

List<Product> products = [];

void add_products(){
  products.add(product_one);
}

void show() {
  for (Product p in products) {
    print("Id: ${p.Id}  Name: ${p.Name} Price: ${p.Price}");
  }
}
