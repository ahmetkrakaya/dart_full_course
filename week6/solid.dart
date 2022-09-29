void main(){

  //LSP
  IDatabase database = SQL();
  database = MongoDB();
}

//S -> SRP -> Single Responsibility Principle
//Bir sınıfta sadece sınıfla ilgili işlemler yapılsın
//Farklı işlemler farklı sınıflarda tanımlansın
class UserManager{
  String name;

  UserManager({required this.name});

  void changeUserName(String name){
    this.name = name;
  }
}

class UserLocalization{
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization(){
    manager.changeUserName('Ahmet');
    changeLocalization();
  }

  void changeLocalization(){
    print('eng');
  }
}

//O -> OSP -> Open Closed Principle
//Core sınıfa dokunmadan başka sınıflarla özellik ekleyebiliriz.
class Product{
  final String productName;
  final String productMoney;

  Product(this.productName, this.productMoney);
}

class ProductCategories extends Product{
  ProductCategories(String name, String money) : super(name,money);

  final String category = 'cosmetic';
}

//L -> LSP -> Liskov Substitution Principle
//Aynı türden sınıfların birbirleri yerine geçebiliyor olması
abstract class IDatabase{
  void write();
}

class SQL extends IDatabase{
  @override
  void write() {}
}

class MongoDB extends IDatabase{
  @override
  void write() {}
}

//I -> ISP -> Interface Segregation Principle
abstract class IUserOperation with IUserLocation, ILanguage{
  void write();
  void read();
  void delete();
}

abstract class IUserLocation{
  void locationChange();
}

abstract class ILanguage{
  void language();
}

class UserLocation extends IUserLocation{
  @override
  void locationChange() {}
}

//D -> DIP -> Dependency Inversion Principle
//Üst sınıflarda alt sınıfların bağımlılıklarını olmamalı
//üst sınıflar sadece kendi özelliklerini barındırmalı
abstract class ICameraManager{
  void readQR();
}

class DeviceCameraManager extends ICameraManager{
  final IphoneCameraReader iphoneCameraReader;

  DeviceCameraManager(this.iphoneCameraReader);

  @override
  void readQR() {
    iphoneCameraReader;
  }
}

class IphoneCameraReader{
}