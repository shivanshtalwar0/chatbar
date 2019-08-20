import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chatbar/chatbar.dart';

void main() {
  const MethodChannel channel = MethodChannel('chatbar');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
