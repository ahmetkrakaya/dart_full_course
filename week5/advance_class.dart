void main(){

  final user = _User('Ahmet',age: 12);

  //müşteri reşit mi kontrolü yap
  // if((user.age ?? 0) < 18){}

  if(user.age is int){
    if(user.age! < 18){
      print('Reşit Değil');
      user.updateMoneyWithNumber(200);
    }else{
      user.updateMoneyWithString('TR');
    }
  }


  //kullanıcılarımın parası var ama paranın tipi değişken olabilir
  //parası olan adamın o parametresi bir isimde olabilir veya değer olabilir
  //ya tr yazacak ya da 15 yazabilir ve ekrand göster

  final _newType = user.moneyType is String ? user.moneyType as String : '';
  print(_newType + 'A');

  //=================
  int money1 = 50;
  int money2 = 50;

  if(money1 == money2){
    print('ok');
  }


  //referans tipi olduğu için aynı değil
  final moneyBank1 = Bank(50,'12');
  final moneyBank2 = Bank(50,'12');

  print(moneyBank1 == moneyBank2);

  //müşteri banka sınıfından iki kişinin parasını toplayıp sonucu söylesin
  print(moneyBank1 + moneyBank2);

  //bankaya gelen müşterilerin idsi aynı olanlar aynı müşteri olmalıdır
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  //diğer bankadan modül aldık bunu ekle ve parasını sorgula
  //mixin
  moneyBank1.sayBankHello();

  //müşteri parasına 10 tl ekle ekrana göster
  //adamın id sini 1 arttır sonra ismini ahmet yap

  moneyBank1
    ..money += 10
    ..updateName('Ahmet');

  print(moneyBank1);
}

class _User{
  final String name;
  int? age;
  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data){
    moneyType = data;
  }

  void updateMoneyWithNumber(int number){
    moneyType = number;
  }
}

class Bank with BankMixin{
  int money;
  String id;
  String? name;
  Bank(this.money, this.id);

  int operator +(Bank newBank){
    return this.money + newBank.money;
  }

  void updateName(String name){
    this.name = name;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString()+'Ahmet';
  }

  @override
  bool operator ==(Object object){
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }

}

mixin BankMixin{
  void sayBankHello();
  void calculateMoney(int money){
    print(money);
  }
}