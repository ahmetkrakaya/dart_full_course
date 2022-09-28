void main(){
  final user = User('Ahmet', 15);
  final bankUser = BankUser('Hasan', 20, 12);

  user.sayMoneyWithCompanyName();
  bankUser.sayMoneyWithCompanyName();
  bankUser.bankSpecialLogic();
}

abstract class IUser{
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName(){
    print('$name Parası: $money');
  }
}

class User extends IUser{
  User(String name, int money) : super(name,money);
}

class BankUser extends IUser{
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name,money);

  void bankSpecialLogic(){
    print(bankingCode);
  }
}

class SpecialUser extends IUser{
  final int bankingCode;
  late final int _discount;

  SpecialUser(String name, int money, this.bankingCode, int discount) : super(name,money){
    _discount = discount;
  }

  int get calculateDiscount => money - (money ~/ _discount);
}



