
// Access Modifier
    // Global || Local
              // Public || Private ( Getter , Setter )



class Product{

  // int id = 1;
  String name;
  num price;
  static int _qty = 100;
  
  Product(this.name, this.price) {
    _qty -= 1;
  }

  int get quantity => _qty;

  int getQty() {
    return _qty;
  } // Getter

  int setQty(int newValue) {
    _qty = newValue;
    return _qty;
  } // Setter
  
}


main() {

  ProductController controller = ProductController();

  for(int i = 0; i < 100; i++) {
    Product newProduct = Product('apple', 200);
  }
}



class ProductController{

  num calDis(num price, num disc) {
    num priceAfterDiscount = price - price * (disc / 100);

    return priceAfterDiscount;
  }
}