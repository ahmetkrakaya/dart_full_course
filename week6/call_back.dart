void main(){

  final user = User(5);
  user.calculateMoney((int result){
    print(user.money);
    return result + 5;
  });
}

class User{
  int money;

  User(this.money);

  void calculateMoney(CalculateCallBack onComplete){
    money +=5;
    onComplete(money);
  }
}

typedef CalculateCallBack = int Function(int data);