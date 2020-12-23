

# dart http issue

## dummy server
please run dummy server using 1st terminal
```bash
_ nc -l 127.0.0.1 80 
GET / HTTP/1.1
HOST: EXAMPLE.COM
LLAMA: /llama HTTP/1.1
user-agent: Dart/2.10 (dart:io)
accept-encoding: gzip
content-length: 0
host: localhost
```

## run dummy app
please execute `main.dart` using 2nd terminal
```bash
dart run main.dart
```

### Important piece of code
```dart
  var r = Request("GET / HTTP/1.1\r\nHost: example.com\r\nLLAMA:",
      Uri(scheme: "http", path: "/llama", host: "localhost"));
  await r.send();
```