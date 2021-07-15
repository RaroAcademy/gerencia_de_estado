import 'package:flutter/material.dart';
import 'package:gerenciadeestado/home/home_count_controller.dart';
import 'package:gerenciadeestado/state_builder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeCountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StateBuilder<Ob>(
          controller: controller,
          builder: (context, state) {
            if (state.name.isNotEmpty && state.numero.isNotEmpty) {
              return Text("Name ${state.name} Numero ${state.numero}");
            } else {
              return Container();
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.setName("Gabul");
          controller.setNumero("Numerrrrr");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
