import 'package:chop_shop/data/load_text.dart';
import 'package:flutter/material.dart';

Future<void> getSomeTextRequestAlertDialog(BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return FutureBuilder<Map<String, String>?>(
        future: fetchSomeText(),
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, String>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AlertDialog(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Загрузка данных...'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            if (snapshot.hasError || snapshot.data == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AlertDialog(
                    title: const Center(child: Text('Ошибка')),
                    content: const Text('Не удалось загрузить данные'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('ОК'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AlertDialog(
                    title: const Text('Получены данные'),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Сообщение: ${snapshot.data!['message']}'),
                      ],
                    ),
                    actions: <Widget>[
                      Center(
                        child: TextButton(
                          style: const ButtonStyle(),
                          child: const Text('ОК'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          }
        },
      );
    },
  );
}
