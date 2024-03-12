import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: jsonEncode(
      {
        'ok': true,
        'message': 'You are logged in!',
      },
    ),
    headers: {
      'Content-Type': 'application/json',
      'Set-Cookie': Cookie.fromSetCookieValue(
        'token=jwtencodedstuff; HttpOnly; Path=/; Max-Age=3600; SameSite=Strict; Secure',
        //
      ).toString(),
    },
  );
}
