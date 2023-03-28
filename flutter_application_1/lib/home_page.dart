import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_controller.dart';

// class HomePage extends StatelessWidget {

//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {

//     var controller = HomeController.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//       ),
//       body: Center(child: Text("Oi ${controller.value}")),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         }
//       ),
//     ); 
//   }

// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var counter = 0;

  var itens = ['Nintendo Switch', 'Wii U', '3DS', 'Wii'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(itens[index]),
              );
            },
          ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {            
            counter++;
          });
        }
      ),

    );
  }

}

// body: SizedBox(
//   width: double.maxFinite,
//   height: double.maxFinite,
//   child: SingleChildScrollView(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         for (var i = 0; i < 10; i++)
//           Container(
//             width: double.maxFinite,
//             height: 80,
//             margin: const EdgeInsets.all(12),
//             color: Colors.amber,
//           )
//       ],
//     ),
//   )
// ),