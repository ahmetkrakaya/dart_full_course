void main(){
  final user = User(data: 1);
  user.data;

  final adminUser = AdminUser();
  removeUserAll(adminUser);
}

class User<T>{
  T data;
  User({
    required this.data,
});
}

abstract class IAdmin{
  void removeUser();
}

class AdminUser extends IAdmin{
  @override
  void removeUser() {

  }
}

void removeUserAll<T extends IAdmin>(T data){
  data.removeUser();
}

