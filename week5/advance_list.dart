import '../week4/class_extends.dart';

void main() {
  final myCars = [
    Car(category: CarModels.Audi, name: 'A6', money: 1.5, isSecondHand: false),
    Car(category: CarModels.BMW, name: 'M5', money: 1.2),
    Car(
        category: CarModels.Mercedes,
        name: 'GLE',
        money: 1.3,
        isSecondHand: false),
    Car(category: CarModels.Audi, name: 'A8', money: 1.9),
    Car(category: CarModels.BMW, name: 'X6', money: 1.8, isSecondHand: false),
  ];

  //bu arabaların kaç tanesi ikinci el
  final resultCount =
      myCars.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  //yeni araba geldi bu bizde var mı
  final newCar = Car(category: CarModels.Audi, name: 'A7', money: 1.9);
  final isHaveCar = myCars.contains(newCar);
  myCars.add(newCar);
  if (isHaveCar)
    print('elimizde var');
  else
    print('elimizde yok');

  //bana bmw olan ve money si 1.5 den büyük olan araba isimlerini söyle
  final resultBMWMore = myCars.where((element) {
    return element.category == CarModels.BMW && element.money > 1.5;
  }).join();
  print(resultBMWMore);

  //sadece araç isimlerini yan yana göster
  final carNames = myCars.map((e) => e.name).join(', ');
  print(carNames);

  //elimde mercedes var mı?
  try {
    final merco = myCars.singleWhere((element) => element.category == CarModels.Mercedes);
    print(merco);
  } catch(e) {
    print('araba yok');
  } finally {
    print('işlem bitti');
  }

  //yeni gelen araç kaçıncı sırada
  final carIndex = myCars.indexOf(newCar);
  print(carIndex);

  //araçlarımı küçükten büyüğe sırala
  myCars.sort((first, second) => first.money.compareTo(second.money));
  print(myCars);

  //sadece userlarımı görücem
  final users = myCars.expand((element) => element.users).toList();

  //son eklenen aracı silelim
  //bmw olan araçları silelim
  myCars.remove(newCar);
  myCars.removeWhere((element) => element.category == CarModels.BMW);
  print(myCars);
}

//arabalar sınıfı olacak
//model ismi parası kesin olarak olacak şehri yok ikinci el durumu müşteri söylemezse
//her ürün ikinci el kabul edilecek
//benim 5 arabam olacak
class Car {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  List<BankUser> users;

  Car({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const [],
  });



  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Car &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels {
  BMW,
  Audi,
  Mercedes,
  Ford,
}
