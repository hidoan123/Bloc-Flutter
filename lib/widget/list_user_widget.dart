import 'package:app_bloc/models/user.dart';
import 'package:app_bloc/services/user_services.dart';
import 'package:flutter/material.dart';

import 'item_user.dart';

class ListUserWidget extends StatefulWidget
{
  const ListUserWidget({super.key});

  @override
  State<ListUserWidget> createState() =>  ListUserWidgetState();

}

class ListUserWidgetState extends State<ListUserWidget>{
  UserService userService = UserService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userService.fetchData();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userService.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder<List<User>>(
        stream: userService.stream,
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            print('khong cos data');
            return const CircularProgressIndicator();
          }
          var listUsers = snapshot.data;
          return ListView.builder(
            itemCount: listUsers?.length,
              itemBuilder: (context, index){
              return ItemUser(user: listUsers![index],);
              }
              );
        });
  }
}