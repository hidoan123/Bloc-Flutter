import 'package:flutter/material.dart';

import 'add_user_widget.dart';
import 'list_user_widget.dart';
class HomePageWidget extends StatefulWidget
{
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() =>HomePageWidgetState();
}

class HomePageWidgetState extends State<HomePageWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is test Stream'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const AddUserWidget(),));
        },
        child:const Icon(Icons.add),
      ),
      body: Center(child: ListUserWidget()),
    );
  }
}