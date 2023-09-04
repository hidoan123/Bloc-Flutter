import 'dart:async';
import '../data/fake_data.dart';
import '../models/user.dart';

class UserService
{
  StreamController<List<User>> userController = StreamController<List<User>>();
  Sink<List<User>> get _sink => userController.sink;
  Stream<List<User>> get stream => userController.stream;

  void fetchData()
  {
    _sink.add(listUser);
    print('da add data vao sink');
  }

  void addUser(User user)
  {
    listUser.add(user);
    _sink.add(listUser);
    fetchData();
  }
  void removeUser(int idUser)
  {
    listUser.removeWhere((element) => element.id == idUser);
    _sink.add(listUser);
  }
  void dispose() {
    userController.close();
  }
}