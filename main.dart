import 'dart:io';
import 'dart:json' as JSON;

/**
 * This source code come from Seth Ladd's blog
 * http://blog.sethladd.com/2012/08/running-dart-in-cloud-with-heroku.html
 */
main() {
  HttpServer server = new HttpServer();
  int port = int.parse(Platform.environment['PORT']);
  server.listen('0.0.0.0', port);
  print('Server started on port: ${port}');

  server.defaultRequestHandler = (HttpRequest request, HttpResponse response) {

    String resp = JSON.stringify({
      'Dart on Heroku': true,
      'Buildpack URL': 'https://github.com/igrigorik/heroku-buildpack-dart',
      'Environment': Platform.environment}
    );

    response.headers.set(HttpHeaders.CONTENT_TYPE, 'application/json');
    response.outputStream.writeString(resp);
    response.outputStream.close();
  };
}