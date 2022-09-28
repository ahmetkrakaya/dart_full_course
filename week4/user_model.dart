class Customer{
  final String _customerID;
  final String customerName;
  int _customerMoney;

  int get customerMoney => _customerMoney;

  set customerMoney(int? money) {
    money != null ? _customerMoney : 0;
  }
  final int? customerAge;
  final String? customerCity;

  Customer(this._customerID,{required this.customerName,required int customerMoney, this.customerAge, this.customerCity}) : _customerMoney = customerMoney;

  bool isSpecialUser(String customerID){
    return _customerID == customerID;
  }

  bool get isEmptyID => _customerID.isEmpty;
}

extension CustomerControlExtension on Customer{

  void controlName(){
    print(customerName);
  }
}