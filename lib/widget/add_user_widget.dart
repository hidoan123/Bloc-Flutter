import 'package:app_bloc/models/user.dart';
import 'package:app_bloc/services/user_services.dart';
import 'package:flutter/material.dart';
class AddUserWidget extends StatefulWidget
{
  const AddUserWidget({super.key});

  @override
  State<AddUserWidget> createState() => AddUserWidgetState();

}

class AddUserWidgetState extends State<AddUserWidget>{

  UserService userService = UserService();
  TextEditingController IdController = TextEditingController();
  TextEditingController NameController = TextEditingController();
  TextEditingController AddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add user'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: IdController,
              decoration:const InputDecoration(
                labelText: 'Enter ID', // Nhãn cho TextField
                hintText: '...', // Gợi ý cho TextField
                prefixIcon: Icon(Icons.person), // Icon trước TextField
                border: OutlineInputBorder(), // Viền ngoài TextField
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: NameController,
              decoration: const InputDecoration(
                labelText: 'Enter Name', // Nhãn cho TextField
                hintText: 'John Doe', // Gợi ý cho TextField
                prefixIcon: Icon(Icons.person), // Icon trước TextField
                border: OutlineInputBorder(), // Viền ngoài TextField
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: AddressController,
              decoration:const  InputDecoration(
                labelText: 'Enter Address', // Nhãn cho TextField
                hintText: 'John Doe', // Gợi ý cho TextField
                prefixIcon: Icon(Icons.person), // Icon trước TextField
                border: OutlineInputBorder(), // Viền ngoài TextField
              ),),
          ),
          ElevatedButton(
              onPressed: (){
                int id = int.parse(IdController.text);
              String name = NameController.text;
              String address = AddressController.text;
              User user = User(id: id, name: name, address: address);
              userService.addUser(user);
              setState(() {
              });
              Navigator.of(context).pop();
              },
              child: const Text('Add user'))
        ],
      ),
    );
  }
}