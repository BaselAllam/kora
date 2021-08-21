
// MVC => Model View Controller
// BLoC => Business Logic Component


class Product{

  // int id = 1;
  String name;
  num price;
  static int qty = 100;
  
  Product(this.name, this.price) {
    qty -= 1;
  }
  
}



class ProductController{

  num calDis(num price, num disc) {
    num priceAfterDiscount = price - price * (disc / 100);

    return priceAfterDiscount;
  }
}



main() {

  ProductController controller = ProductController();

  for(int i = 0; i < 100; i++) {
    Product newProduct = Product('apple', 200);
    print(controller.calDis(newProduct.price, 50));
  }
}