import 'dart:async';

import 'package:api/src/model/response_model.dart';
import 'package:design_system/design_system.dart';
import 'package:dio/dio.dart';

class DioService {
  /// An instance of [Dio] for executing network requests.
  final Dio _dio;

  /// A public constructor that is used to create a Dio service and initialize
  /// the underlying [Dio] client.
  ///
  /// * [interceptors]: An [Iterable] for attaching custom
  /// [Interceptor]s to the underlying [_dio] client.
  /// * [httpClientAdapter]: Replaces the underlying [HttpClientAdapter] with
  /// this custom one.
  DioService({
    required Dio dioClient,
    Iterable<Interceptor>? interceptors,
  }) : _dio = dioClient {
    if (interceptors != null) _dio.interceptors.addAll(interceptors);
  }

  Future<ResponseModel> post<R>({
    required String endpoint,
    JSON? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    final response = await _dio.post<JSON>(
      endpoint,
      data: data,
      options: options,
    );
    return ResponseModel.fromJson(response.data!);
  }
}
