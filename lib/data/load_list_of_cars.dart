import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, String>?> fetchListOfCarData() async {
  const String serverAddress = 'http://max.atsky.ru/getListOfCarData';
  try {
    final response = await http.get(Uri.parse(serverAddress), headers: {
      'Content-Type': 'application/json',
    }).timeout(const Duration(seconds: 25));
    if (response.statusCode == 200) {
      // Если сервер возвращает ответ с кодом 200 OK, то парсим JSON.
      Map<String, dynamic> carList = jsonDecode(response.body);
      String name = carList['name'];
      String price = carList['price'];
      String url = carList['url'];
      String description = carList['description'];
      // Возвращаем данные в виде Map.
      return {
        'name': name,
        'price': price,
        'url': url,
        'description': description,
      };
    } else {
      // Если ответ не OK, то бросаем исключение.
      throw Exception('Не удалось загрузить данные');
    }
  } catch (e) {
    // Если возникла ошибка, возвращаем null.
    return null;
  }
}
