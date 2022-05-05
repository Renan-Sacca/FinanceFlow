import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CriarbanconbCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'criarbanconb',
      apiUrl: 'https://6ca6-138-0-35-123.ngrok.io/nubank/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CriarbancoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'criarbanco',
      apiUrl: 'https://6ca6-138-0-35-123.ngrok.io/nubank_banco/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class CalcularsaldoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'calcularsaldo',
      apiUrl: 'https://6ca6-138-0-35-123.ngrok.io/calcula_saldo/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class DescontarbancoCall {
  static Future<ApiCallResponse> call({
    String idUsuario = '',
    String idFatura = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'descontarbanco',
      apiUrl:
          'https://6ca6-138-0-35-123.ngrok.io/descontar/${idUsuario}/${idFatura}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
