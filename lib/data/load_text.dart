import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, String>?> fetchSomeText() async {
  const String serverAddress = 'http://max.atsky.ru/getSomeText';
  try {
    final response = await http.get(Uri.parse(serverAddress), headers: {
      'Content-Type': 'application/json',
    }).timeout(const Duration(seconds: 25));
    if (response.statusCode == 200) {
      // Если сервер возвращает ответ с кодом 200 OK, то парсим JSON.
      Map<String, dynamic> someText = jsonDecode(response.body);
      String message = someText['message'];
      // Возвращаем данные в виде Map.
      return {
        'message': message,
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
