import 'package:http/http.dart';
import 'package:http/src/request.dart';

void main() async {
  var r = Request("GET / HTTP/1.1\r\nHost: example.com\r\nLLAMA:",
      Uri(scheme: "http", path: "/llama", host: "localhost"));
  await r.send();
}
