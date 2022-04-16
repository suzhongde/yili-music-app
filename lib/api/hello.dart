import 'package:http/http.dart' as http;

const String baseUrl = 'https://yili-music-1662738-1309887746.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async{
  final response = await http
      .get(Uri.parse(baseUrl + '/hello'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}