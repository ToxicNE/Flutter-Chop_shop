import 'package:flutter/material.dart';

class Kopeyka extends StatelessWidget {
  const Kopeyka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Копейка'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}