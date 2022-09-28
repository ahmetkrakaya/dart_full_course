void main(){
  int money = 5;
  money += 1;
  money++;

  String name = 'Ahmet';
  String surName = 'Karakaya';

  print(name + surName);

  if(name == 'Ahmet'){}
  if(name != 'Ahmet'){}
  if(name.length > 'Ahmet'.length){}
  if(name.length <= 'Ahmet'.length){}

  const int appleMoney = 20;
  const double discount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ discount);

  print('Kalan Param: $myMoney');

  print('${myMoney % 2 == 0}');

  print(myMoney.isOdd); // Çift mi
  print(myMoney.isEven); // Tek mi
}