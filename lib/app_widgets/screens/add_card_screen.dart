// ignore_for_file: avoid_print

import 'package:chop_shop/gridview_card.dart';
import 'package:chop_shop/product.dart';
import 'package:chop_shop/ui/colors.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  AddCardScreenState createState() => AddCardScreenState();
}

class AddCardScreenState extends State<AddCardScreen> {
  final _formKey = GlobalKey<FormState>();
  String _productName = '';
  String _productPrice = '';
  String _productImageUrl = '';
  String _productDescription = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: AppBar(
        backgroundColor: appbarBackgroundColor,
        foregroundColor: appbarForegroundColor,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Добавить карточку'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        elevation: 5.0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Название',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите название';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productName = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Цена',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите цену';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productPrice = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'URL изображения',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите URL изображения';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productImageUrl = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Описание',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите описание';
                  }
                  return null;
                },
                onSaved: (value) {
                  _productDescription = value!;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Проверка, является ли _productPrice допустимым числовым значением
                   
                      setState(() {
                        productList.add(Product(
                          name: _productName,
                          price: _productPrice,
                          url: _productImageUrl,
                          description: _productDescription,
                        ));
                      });
                      Navigator.of(context).pop();
                   
                  }
                },
                child: const Text('Отправить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
