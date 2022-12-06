import 'dart:convert';

import 'package:common_dependency/common_dependency.dart';

abstract class AuthLocalDataSource {
  Future<void> setTokens(TokenModel token);
  Future<TokenModel?> getTokens();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage storage;

  AuthLocalDataSourceImpl(this.storage);
  @override
  Future<TokenModel?> getTokens() async {
    bool hasToken = await storage.containsKey(key: 'token');
    if (hasToken) {
      await storage.read(key: 'token');
    } else {
      return null;
    }
  }

  @override
  Future<void> setTokens(TokenModel token) async {
    var encodedToken = jsonEncode(token.toJson());
    return await storage.write(
      key: 'token',
      value: encodedToken,
    );
  }
}
