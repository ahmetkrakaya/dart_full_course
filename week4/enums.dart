void main(){
  final customerMouse = Mice.apple;

  switch(customerMouse){
    case Mice.magic:
      // TODO: Handle this case.
      break;
    case Mice.apple:
      // TODO: Handle this case.
      break;
    case Mice.logitech:
      // TODO: Handle this case.
      break;
    case Mice.a4:
      // TODO: Handle this case.
      break;
  }

    print(customerMouse.isCheckName('a4'));
}

enum Mice{
  magic,
  apple,
  logitech,
  a4
}

extension MiceSelectedExtension on Mice{

  bool isCheckName(String name){
    return this.name == name;
  }
}

