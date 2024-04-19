import 'package:flutter/material.dart';
import 'package:rivera0538/all_containers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gorras Rivera",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text(
              "Mis Contenedores-Gorras0538",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const AllContainers()),
    );
  }
}
