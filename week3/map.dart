void main(){

  Map<String, int> users = {
    'Ahmet': 20,
    'Nazif': 50,
  };

  print('Ahmet\'in parası: ${users['Ahmet']}');

  for(var item in users.keys){
    print('$item: ${users[item]}');
  }
  for(var item in users.values){
    print(item);
  }

  for(int i = 0; i < users.length; i++){
    print('${users.keys.elementAt(i)}: ${users.values.elementAt(i)}');
  }

  //
  final Map<String, List<int>> bank = {
    'Ahmet': [100, 200, 300],
  };
  bank['Mehmet'] = [30, 50];
  bank['Veli'] = [240];

  for(var item in bank.keys){
    for(var money in bank[item]!){
      if(money > 150){
        print('Kredin hazır');
        break;
      }
    }
  }

  for(var name in bank.keys){
    int result = 0;
    for(var money in bank[name]!){
      result += money;
    }
    print('$name\'in toplam parası: $result');
  }
}