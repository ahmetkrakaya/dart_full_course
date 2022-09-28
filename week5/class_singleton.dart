import 'product_config_model.dart';

void main(){

  final newProduct = Product.money;

  calculateMoney();
  print(newProduct);

  //user classi kullanarak product yapmak istiyorum

  final user1 = User('Ahmet', 'Macbook');

  final product1 = Product(name: user1.product);
  final product2 = Product.fromUser(user1);

  //apiKey neydi
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;

}

void calculateMoney(){
  if(Product.money > 5){
    print('5 tl ekle');
    Product.money += 5;
    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product{
  static int money = 10;
  String name;

  Product({required this.name});

  Product.ahmet([this.name = 'ahmet']);
  factory Product.fromUser(User user){
    return Product(name: user.name);
  }

  static void incrementMoney(int newMoney){
    money += newMoney;
  }
}

class User{
  final String name;
  final String product;

  User(this.name, this.product);

}