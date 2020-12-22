

# http generated by snippet

## dummy server
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

## dart code
```dart
  var r = Request("GET / HTTP/1.1\r\nHost: example.com\r\nLLAMA:",
      Uri(scheme: "http", path: "/llama", host: "localhost"));
  await r.send();
```