void main(){
  final int classDegree = 2;
  bool isSuccess = false;
  //2 ise ekrana bravo
  //1 ise olur
  //0 ise yeterli
  //diğer durumlarda başarısız

  switch(classDegree){
    case 2:
      print('Bravo');
      isSuccess = true;
      break;
    case 1:
      print('Olur');
      isSuccess = true;
      break;
    case 0:
      print('Yeterli');
      isSuccess = true;
      break;
    default:
      print('Başarısız');
      isSuccess = false;
      break;
  }

  print('Beyfendi çocuğunuzun sonucu: $isSuccess');

  //mağazaya gelen isimlerden Ahmet ve Hasan olan olursa bravo yaz

  String name = 'Ahmet';

  const String specialUser1 = 'Ahmet';
  const String specialUser2 = 'Hasan';

  switch(name){
    case specialUser1:
    case specialUser2:
      print('Bravo');
      break;
    default:
      print('Sorunlu');
      break;
  }
}