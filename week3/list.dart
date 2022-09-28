void main(){

  //Bankanın 5 müşterisi var

  final List<String> bankCustomers = ['Ahmet', 'Mehmet', 'Ali', 'Veli', 'Nazif'];
  final List<int> customerMoneys = [100, 110, 50, 120, 150];

  bankCustomers.add('Ebrar');
  bankCustomers.sort();
  customerMoneys.insert(2, 300);
  print(customerMoneys);
  for(int i = 0; i<bankCustomers.length; i++){
    print('${bankCustomers[i]}\'nin parası: ${customerMoneys[i]}');
  }
  print(bankCustomers.reversed.toList());

  //100 müşetri oluştur ve hepsine 5 tl ver.

  List<int> newCustomerMoneys = List.generate(100, (index){
    return index + 5;
  });
  print(newCustomerMoneys);

  //Customers 100, 30, 40, 60 tl ye sahip
  // 35 tl den büyük olanlara kredi verebiliriz yaz küçük olanları reddet

  List<int> moneys = [100, 30, 40, 60, -5];
  moneys.sort();
  for(int i in moneys.reversed){
    if(i > 35){
      print('Paranız: $i -> Kredi alabilirsiniz.');
    } else{
      print('Paranız: $i -> Malesef kredi veremiyoruz.');
    }
  }

  //List with methods
  List<String> users = ['Ahmet', 'Nazif', 'Ebrar'];
  print(users.contains('Mehmet'));
}