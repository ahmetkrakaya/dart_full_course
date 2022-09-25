void main(){
  final int classDegree = 2;

  //2 ise ekrana bravo
  //1 ise olur
  //0 ise yeterli
  //diğer durumlarda başarısız

  switch(classDegree){
    case 2:
      print('Bravo');
      break;
    case 1:
      print('Olur');
      break;
    case 0:
      print('Yeterli');
      break;
    default:
      print('Başarısız');
      break;
  }
}