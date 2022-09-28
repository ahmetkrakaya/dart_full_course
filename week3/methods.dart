void main(){

  final int userMoney1 = 5;
  final int userMoney2 = 0;

  controlUserMoney(userMoney1, 0);
  controlUserMoney(userMoney2, 5);

  int userTL = 50;
  int dollarRate = 18;
  int userDollar = convertToDollar(userMoney: userTL, dollarExchangeRate: dollarRate);
  print('$userTL TL\'niz $dollarRate dolar kurundan hesaplanıp, $userDollar Dolar\'a çevrilmiştir.');
}

//Müşterinin parası var mı yok mu kontrol et
void controlUserMoney(int userMoney, int minValue){
  if(userMoney > minValue){
    print('Parası var');
  }else{
    print('Parası yok');
  }
}

//TL yi Dolara çevir
int convertToDollar({required int userMoney, int dollarExchangeRate = 18}){
  return userMoney ~/ dollarExchangeRate;
}