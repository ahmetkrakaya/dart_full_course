void main() {
  String? userName = 'a';

  if(userName.length > 2){
    print('a');
  }else{
    throw UserNameException();
  }
}

class UserNameException implements Exception{

  @override
  String toString() {
    return 'user name mull girmişssin';
  }
}