class Product{
  int? id;
  String? name;
  double? price;
  double? discount;
  Product (this.id,this.name,this.price,this.discount);

  double applydiscount(){
      return price! * (1-0.1);
  }

  String toString(){
    return ("name: $name , price: $price");
  }
}

class catalog{
  List Products = [];

  addproduct(Product name){
     Products.add(name);

  }
  showallproduct(){
    for (Product product in Products){
      print(product);
    }
  }
}