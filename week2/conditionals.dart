void main() {
  int money = 15;
  String userName = 'Ahmet';
  bool isCustomerRich = false;
  print('$userName Bey Paranız: $money');

  if(money > 10){
    print('Ahmet Bey Zenginsiniz.');
  }else{
    print('Ahmet bey Fakirsiniz.');
  }

  money -= 10;

  print('$userName Bey Paranız: $money');
  if(money > 10){
    print('Ahmet Bey Zenginsiniz.');
  }else{
    print('Ahmet bey Fakirsiniz.');
  }

  //müşteri 10 tl si ile gelir ve sorgu yapar.
  //sorgu sonucu 20 tl öder.
  //kalan parası 0 dan küçükse kovulur.

  int customerMoney = 10;
  const int bankCost = 5;
  const int bankCostGeneral = 20;

  if(customerMoney > bankCost){
    print('Hoşgeldiniz.');
    customerMoney -= bankCostGeneral;
    print('Paranız: $customerMoney');
  } else if(customerMoney > 0){
    print('Lütfen sıraz alınız.');
  } else{
    print('Borcunuzu ödeyin.');
  }

  //new example

  final String companyName1 = 'Ahmet';
  final String companyName2 = 'Mehmet';
  final String companyName3 = 'Ali';
  final String companyName4 = 'Veli';
  final String companyName5 = 'Nazif';
  const int companyLength = 4;
  String results = '';

  if(companyName1.length > companyLength) {
    results += companyName1;
  }
  if(companyName2.length > companyLength) {
    results += companyName2;
  }
  if(companyName3.length > companyLength) {
    results += companyName3;
  }
  if(companyName4.length > companyLength) {
    results += companyName4;
  }
  if(companyName5.length > companyLength) {
    results += companyName5;
  }

  print(results);
}