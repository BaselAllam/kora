

class Product{

  int id = 1;
  String name = 'Apple';
  num price = 200.5;
  int qty = 20;
  
  calDiscount(num disc) {
    num newPrice = price - price * (disc / 100);
    return newPrice;
  }
}

// list [ products ]
// loop cal disc
// fun qty


main() {

  Product p = Product();
  Product x = Product();

  Product z = Product();

  List<Product> allProducts = [p, x, z];
}