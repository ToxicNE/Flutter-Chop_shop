import 'package:chop_shop/app_widgets/screens/description_screen.dart';
import 'package:chop_shop/main.dart';
import 'package:chop_shop/ui/colors.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class GridCardList extends StatefulWidget {
  const GridCardList({super.key});

  @override
  State<GridCardList> createState() => _GridCardListState();
}
  List<Product> productList = [
    Product(
        price: '85000',
        name: 'Lada (ВАЗ) 2101 \'Копейка\'',
        url: 'https://a.d-cd.net/73f08s-960.jpg',
        description:
            '"Копейка" - это неофициальное название первого автомобиля ВАЗ, который выпускался с 1970 по 1988 годы. Полное название модели - ВАЗ-2101. Этот автомобиль был создан на базе итальянского Fiat 124 и стал первым массовым автомобилем в СССР. "Копейка" была очень популярна благодаря своей надежности, простоте обслуживания и доступности.'),
    Product(
        price: '98000',
        name: 'Lada (ВАЗ) 2102 \'Двойка\'',
        url: 'https://a.d-cd.net/be06568s-960.jpg',
        description:
            '"Двойка" - это также неофициальное название автомобиля ВАЗ-2102, который выпускался с 1971 по 1986 годы. Это был универсал на базе модели ВАЗ-2101. Автомобиль отличался вместительным багажником и хорошей проходимостью, что делало его популярным среди населения. '),
    Product(
        price: '270000',
        name: 'Lada (ВАЗ) 2103 \'Тройка\'',
        url: 'https://a.d-cd.net/VkAAAgNcaOA-1920.jpg',
        description:
            '"Тройка" - это неофициальное название автомобиля ВАЗ-2103, который выпускался с 1972 по 1984 годы. Это была более комфортабельная и дорогая версия "Копейки", которая отличалась более современным дизайном и улучшенной отделкой салона. Автомобиль был оснащен более мощным двигателем и имел более высокую максимальную скорость. "Тройка" также была очень популярна среди населения СССР.'),
    Product(
        price: '212000',
        name: 'Lada (ВАЗ) 2104 \'Четвёрка\'',
        url:
            'https://sportishka.com/uploads/posts/2023-11/1701232883_sportishka-com-p-chetverka-mashina-vkontakte-11.jpg',
        description:
            '"Четвёрка" - это неофициальное название автомобиля ВАЗ-2104, который выпускался с 1984 по 2012 годы. Это был универсал на базе модели ВАЗ-2105. Автомобиль отличался вместительным багажником и хорошей проходимостью, что делало его популярным среди населения. '),
    Product(
        price: '125000',
        name: 'Lada (ВАЗ) 2105 \'Пятёрка\'',
        url:
            'https://carsweek.ru/upload/iblock/5e5/5e5b710b976e13b3ea394c6f41e45260.jpg',
        description:
            '"Пятёрка" - это неофициальное название автомобиля ВАЗ-2105, который выпускался с 1980 по 2010 годы. Это был седан на базе модели ВАЗ-2103. Автомобиль отличался более современным дизайном и улучшенной отделкой салона. "Пятёрка" была очень популярна среди населения СССР и России.')
  ];
class _GridCardListState extends State<GridCardList> {


  void navigate(Product product) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 1.0, 
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                    ),
                  ),
                  ),
              Text('Загрузка...'),
            ],
          ),
        );
      },
    );

    Future.delayed(const Duration(milliseconds: 500), () {
      Navigator.of(context).pop(); // закрыть диалоговое окно
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return DescriptionScreen(product: product);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainBackgroundColor,
        body: Center(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.5,
              ),
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      navigate(productList[index]);
                    },
                    child: ProductCard(
                      imageUrl: productList[index].url,
                      productName: productList[index].name,
                      productPrice: int.parse(productList[index].price),
                    ));
              }),
        ));
  }
}
