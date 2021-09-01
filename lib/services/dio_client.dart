import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:movies_flutter/ui/data/auth_store.dart';

class DioClient {
  DioClient({
    required String baseUrl,
    required String tmdbApiKey,
    required AuthStore authStore,
  })  : _baseUrl = baseUrl,
        _tmdbApiKey = tmdbApiKey {
    _createClient();
  }

  static const String apiKey = 'api_key';

  final String _baseUrl;

  final String _tmdbApiKey;

  late final Dio dio;

  Dio _createClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        sendTimeout: const Duration(seconds: 10).inMilliseconds,
        connectTimeout: const Duration(seconds: 10).inMilliseconds,
        receiveTimeout: const Duration(seconds: 10).inMilliseconds,
      ),
    );
    dio.transformer = FlutterTransformer();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          dio.interceptors.requestLock.lock();

          options.queryParameters.addEntries([
            MapEntry(apiKey, _tmdbApiKey),
          ]);

          dio.interceptors.requestLock.unlock();
          handler.next(options);
        },
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        request: true,
      ),
    );
    return dio;
  }
}
