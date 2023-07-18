import 'package:flutter/material.dart';
import 'package:flutter_provider/controller/inc_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider - 10 minutes"),
      ),
      body: Center(
        child: Consumer<IncController>(
          builder: (context, value, child) {
            return Text(value.number.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          Provider.of<IncController>(context, listen: false).incNumber();
        },
      ),
    );
  }
}
