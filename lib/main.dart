import 'package:chop_shop/kopeika.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const ProductGrid({Key? key}) : super(key: key);

    // void navigateToKopeyka(BuildContext context){
    //   Navigator.of(context).push(
    //     MaterialPageRoute(builder: (context){
    //       return const Kopeyka();
    //     }
    //     )
    //   );
    // }




  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 16,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/73f08s-960.jpg',
            productName: 'Lada (ВАЗ) 2101 \'Копейка\'',
            productPrice: '85.000₽',
          );
        } else if (index == 1) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/be06568s-960.jpg',
            productName: 'Lada (ВАЗ) 2102 \'Двойка\'',
            productPrice: '98.000₽',
          );
        } else if (index == 2) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/VkAAAgNcaOA-1920.jpg',
            productName: 'Lada (ВАЗ) 2103 \'Тройка\'',
            productPrice: '270.000₽',
          );
        } else if (index == 3) {
          return const ProductCard(
            imageUrl: 'https://sportishka.com/uploads/posts/2023-11/1701232883_sportishka-com-p-chetverka-mashina-vkontakte-11.jpg',
            productName: 'Lada (ВАЗ) 2104 \'Четвёрка\'',
            productPrice: '212.000₽',
          );
        } else if (index == 4) {
          return const ProductCard(
            imageUrl: 'https://carsweek.ru/upload/iblock/5e5/5e5b710b976e13b3ea394c6f41e45260.jpg',
            productName: 'Lada (ВАЗ) 2105 \'Пятёрка\'',
            productPrice: '125.000₽',
          );
        } else if (index == 5) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/d9421ecs-1920.jpg',
            productName: 'Lada (ВАЗ) 2106 \'Шестёрка\'',
            productPrice: '130.000₽',
          );
        } else if (index == 6) {
          return const ProductCard(
            imageUrl: 'https://i.ytimg.com/vi/GcGSAxe7jjA/maxresdefault.jpg',
            productName: 'Lada (ВАЗ) 2107 \'Семёрка\'',
            productPrice: '112.000₽',
          );
        } else if (index == 7) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/189a9f5s-1920.jpg',
            productName: 'Lada (ВАЗ) 2108 \'Восьмёрка\'',
            productPrice: '80.000₽',
          );
        } else if (index == 8) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/e69a405s-1920.jpg',
            productName: 'Lada (ВАЗ) 2109 \'Девятка\'',
            productPrice: '100.000₽',
          );
        } else if (index == 9) {
          return const ProductCard(
            imageUrl: 'https://a.d-cd.net/5d03a08s-960.jpg',
            productName: 'Lada (ВАЗ) 2110 \'Десятка\'',
            productPrice: '110.000₽',
          );
        } else if (index == 10) {
          return const ProductCard(
            imageUrl: 'https://avatars.mds.yandex.net/get-autoru-vos/11388278/3d82ff40df1943c8ed04fbafef9e7db6/1200x900',
            productName: 'Lada (ВАЗ) 2121 (4x4) \'Нива\'',
            productPrice: '540.000₽',
          );
        } else if (index == 11) {
          return const ProductCard(
            imageUrl: 'https://wp-s.ru/wallpapers/1/5/380802298673819/mashina-priora-krasnaya-na-snezhnom-fone.jpg',
            productName: 'Lada (ВАЗ) Priora Ⅰ',
            productPrice: '259.000₽',
          );
        } else if (index == 12) {
          return const ProductCard(
            imageUrl: 'https://sportishka.com/uploads/posts/2022-05/1651354311_58-sportishka-com-p-lada-granta-standart-mashini-krasivo-foto-60.jpg',
            productName: 'Lada (ВАЗ) Granta',
            productPrice: '490.000₽',
          );
        } else if (index == 13) {
          return const ProductCard(
            imageUrl: 'https://sportishka.com/uploads/posts/2022-11/1667543323_42-sportishka-com-p-lada-granta-kross-krasnaya-krasivo-45.jpg',
            productName: 'Lada (ВАЗ) Granta Cross',
            productPrice: '1.150.000₽',
          );
        } else if (index == 14) {
          return const ProductCard(
            imageUrl: 'https://627400.ru/wp-content/uploads/a/c/7/ac79c4b46679726b9ef2f19431307212.jpeg',
            productName: 'Lada (ВАЗ) Vesta',
            productPrice: '1.098.700₽',
          );
        } else if (index == 15) {
          return const ProductCard(
            imageUrl: 'https://avatars.dzeninfra.ru/get-zen_doc/2355127/pub_6188255bbb38fc1b2a52ceba_618825a4e530b926ae35eadc/scale_1200',
            productName: 'Lada (ВАЗ) Vesta Cross',
            productPrice: '1.407.200₽',
          );
        }
        return Container(); 
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String productPrice;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          
          // print('Нажата карточка: $productName');
        },
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
      ),
    );
  }
}
