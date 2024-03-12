import 'package:chop_shop/add_card_screen.dart';
import 'package:chop_shop/gridview_card.dart';
import 'package:chop_shop/ui/colors.dart';
import 'package:chop_shop/widgets/widgets/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void navigateToAddCardScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const AddCardScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: appbarBackgroundColor,
          foregroundColor: appbarForegroundColor,
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Chop Shop'),
          ),
          shape: const RoundedRectangleBorder(),
          elevation: 5.0,
        ),
        drawer: const AppDrawer(),
        body: const ProductGrid(),
        floatingActionButton: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton.extended(
              tooltip: 'Добавить карточку',
              backgroundColor: buttonBackgroundColor,
              foregroundColor: buttonForegroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              elevation: 5.0,
              onPressed: () {
                navigateToAddCardScreen(context);
              },
              icon: const Icon(Icons.add),
              label: const Text('Добавить'),
            );
          },
        ),
      ),
    );
  }
}

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => ProductGridState();
}

class ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return const GridCardList();
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final int productPrice;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

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
