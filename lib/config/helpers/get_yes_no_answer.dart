import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    try {
      final response = await _dio.get('https://yesno.wtf/api');
      final yesNoModel = YesNoModel.fromJsonMap(response.data);
      return yesNoModel.toMessageEntity();
    } on DioException catch (error) {
      return Message(
        text: 'No se pudo obtener respuesta. Por favor intenta de nuevo.',
        fromWho: FromWho.hers,
      );
    } catch (_) {
      return Message(
        text: 'Ocurrió un error inesperado.',
        fromWho: FromWho.hers,
      );
    }
  }
}
