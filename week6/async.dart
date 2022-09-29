void main() async{

  print('a');
  //2 saniye bekle hiçbir işlem yapma
  await Future.delayed(Duration(seconds: 1));
  print('b');

  Future.forEach([1,2,3,4], (int element) async {
    await Future.delayed(Duration(seconds: 1));
    print('İşlem bitti: $element');
  });

  print('hello1');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello4');
  });

  Stream<int> bankMoneys = Stream.empty();

  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) {
    print(event);
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;

  await Future.delayed(Duration(seconds: 1));
  while(_localRetry < retryCount){
    _localRetry++;
    yield money += 5;
  }
}

