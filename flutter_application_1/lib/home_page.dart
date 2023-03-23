import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_controller.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(child: Text("Oi ${controller.value}")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increment();
        }
      ),
    ); 
  }

}