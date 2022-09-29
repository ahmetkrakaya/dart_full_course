void main(){
  IUser user1 = Turk();

  user1.sayName();
  user1 = English();
  user1.sayName();
}

abstract class IUser{
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser{
  @override
  String get name => 'Ahmet';

  @override
  void sayName() {
    print('Merhaba $name');
  }
}

class English implements IUser{
  @override
  String get name => 'John';

  @override
  void sayName() {
    print('Hello $name');
  }
}