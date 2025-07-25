import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:lilac_chat/data/shared_pref/shared_pref.dart';
import 'package:lilac_chat/domain/core/api_endpoints/api_endpoints.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:japx/japx.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options = BaseOptions(baseUrl: ApiEndpoints.baseUrl);

    // Enable logger in debug mode
    assert(() {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: false,
          responseHeader: false,
          error: false,
          compact: true,
          maxWidth: 100,
        ),
      );
      return true;
    }());
  }

  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
    bool isJapx = false,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken = await SharedPref.getToken().then((token) => token);

        _dio.options.headers.addAll({
          'authorization': "Bearer $accessToken",
          ...headers ??
              {
                'content-Type': 'application/json',
                'accept': 'application/json',
              },
        });
      }
      final response = await _dio.get(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return isJapx ? Japx.decode(response.data) : response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool isJapx = false,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken = await SharedPref.getToken().then((token) => token);

        _dio.options.headers.addAll({
          'authorization': "Bearer $accessToken",
          ...headers ??
              {
                'content-Type': 'application/json',
                'accept': 'application/json',
              },
        });
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      final response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
      );

      return isJapx ? Japx.decode(response.data) : response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool isJapx = false,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken = await SharedPref.getToken().then((token) => token);

        _dio.options.headers.addAll({
          'authorization': "Bearer $accessToken",
          ...headers ??
              {
                'content-Type': 'application/json',
                'accept': 'application/json',
              },
        });
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      final response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return isJapx ? Japx.decode(response.data) : response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> delete(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool isJapx = false,
    bool addHeader = true,
  }) async {
    try {
      if (addHeader) {
        final accessToken = await SharedPref.getToken().then((token) => token);

        _dio.options.headers.addAll({
          'authorization': "Bearer $accessToken",
          ...headers ??
              {
                'content-Type': 'application/json',
                'accept': 'application/json',
              },
        });
      } else {
        _dio.options.headers['content-Type'] = 'application/json';
      }
      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return isJapx ? Japx.decode(response.data) : response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> patch(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    dynamic data,
    bool isJapx = false,
  }) async {
    try {
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers:
              headers ??
              {
                'content-Type': 'application/json',
                'accept': 'application/json',
              },
        ),
      );
      return isJapx ? Japx.decode(response.data) : response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> downloadFile({
    required String url,
    required String savePath,
    Function(int received, int total)? onReceiveProgress,
  }) async {
    try {
      await _dio.download(url, savePath, onReceiveProgress: onReceiveProgress);
      return true;
    } catch (e) {
      log('Download error: $e');
      return false;
    }
  }
}
