import 'package:flutter/material.dart';

import '../models/user.dart';
class ItemUser extends StatelessWidget
{
  User user;
  ItemUser({required this.user, super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurpleAccent[100]
      ),
      margin:const EdgeInsets.all(10) ,
      padding:const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(user.id.toString(), style: const TextStyle(fontSize: 18, color: Colors.white),),
          Text(user.name.toString(),style: const TextStyle(fontSize: 18, color: Colors.white)),
          Text(user.address.toString(),style: const TextStyle(fontSize: 18, color: Colors.white))
        ],
      ),
    );
  }

}