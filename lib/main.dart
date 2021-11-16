import 'package:flutter/material.dart';
import 'package:futapp/model/league.dart';
import 'package:futapp/screens/tableScreen.dart';
import 'package:get_storage/get_storage.dart';
import 'screens/loginScreen.dart';

void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutAPP',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
      }
    );
  }
}
