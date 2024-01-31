import 'package:chop_shop/product.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Информация об автомобиле'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: Navigator.of(context).pop
          ),
      ),
      body: Column(
        children: [
            Image.network(
              product.url,
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              ),
            Column(
              children: 
              [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(children: [Text(product.name, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16))],)),

                  Expanded(
                  flex: 1,
                  child: Row(children: [Text('Цена: ${product.price.toString()}₽', textAlign: TextAlign.center, style: const TextStyle(fontSize: 16),)],)),
              
            ],),
               Row(
                children: [
                  const Padding(padding: EdgeInsets.all(8.0)),
                  Flexible(child: Text(product.description, textAlign: TextAlign.left, style: const TextStyle(fontSize: 16)))
                  
                  
                  ]
              ),
              ],
            ),
        ],
      ),
    );
  }
}