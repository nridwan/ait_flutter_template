import 'dart:convert';

import 'package:common_dependency/common_dependency.dart';

abstract class AuthLocalDataSource {
  Future<void> setTokens(TokenModel token);
  Future<Either<Failure, Unit>> getTokens();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage storage;

  AuthLocalDataSourceImpl(this.storage);
  @override
  Future<Either<Failure, Unit>> getTokens() async {
    bool hasToken = await storage.containsKey(key: 'token');
    throw UnimplementedError();
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
