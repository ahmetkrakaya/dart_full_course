void main(){
  'ali'.isAdmin();

  String? name;

  name.isAdmin();
}

extension StringUserCheckExtension on String?{

  bool isAdmin(){
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}