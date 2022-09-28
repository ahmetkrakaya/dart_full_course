void main(){

}
//extend ile farkı implement ettiğimizde soyut sınıfın tüm özelliklerini kullanmak zorunda olmamız.
abstract class IStudent{
  final String name;
  final int age;

  IStudent(this.name, this.age);
}

class Student implements IStudent{
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

}