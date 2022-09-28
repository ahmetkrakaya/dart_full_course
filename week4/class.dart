import 'user_model.dart';

void main(){

  Customer customer1 = Customer('123',customerName: 'Ahmet', customerMoney: 100);

  if(customer1.isSpecialUser('123')){
    customer1.customerMoney += 5;
    print('Paranız: ' + customer1.customerMoney.toString());
  }

  print(customer1.isEmptyID);
}

