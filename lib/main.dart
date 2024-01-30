import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Chop Shop: Авторазборка'),
        ),
        body: const ProductGrid(),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 15, 
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/73f08s-960.jpg',
            productName: 'Копейка',
            productPrice: '\$50',
          );
        } else if (index == 1) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/be06568s-960.jpg',
            productName: 'Двойка',
            productPrice: '\$75',
          );
        } else if(index == 2) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/VkAAAgNcaOA-1920.jpg',
            productName: 'Тройка',
            productPrice: '\$100',
          );
        } else if(index == 3) {
          return const ProductCard(
            imageUrl: 'https://sportishka.com/uploads/posts/2023-11/1701232883_sportishka-com-p-chetverka-mashina-vkontakte-11.jpg',
            productName: 'Четвёрка',
            productPrice: '\$100',
          );
        } else if(index == 4) {
          return const ProductCard(
            imageUrl: 'https://carsweek.ru/upload/iblock/5e5/5e5b710b976e13b3ea394c6f41e45260.jpg',
            productName: 'Пятёрка',
            productPrice: '\$100',
          );
        } else if(index == 5) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/d9421ecs-1920.jpg',
            productName: 'Шестёрка',
            productPrice: '\$100',
          );
        } else if(index == 6) {
          return const ProductCard(
            imageUrl: 'https://i.ytimg.com/vi/GcGSAxe7jjA/maxresdefault.jpg',
            productName: 'Семёрка',
            productPrice: '\$100',
          );
        } else if(index == 7) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/189a9f5s-1920.jpg',
            productName: 'Восьмёрка',
            productPrice: '\$100',
          );
        } else if(index == 8) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/e69a405s-1920.jpg',
            productName: 'Девятка',
            productPrice: '\$100',
          );
        } else if(index == 9) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/5d03a08s-960.jpg',
            productName: 'Десятка',
            productPrice: '\$100',
          );
        }
        return null;
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productPrice;

  const ProductCard({super.key, 
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Цена: $productPrice',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
