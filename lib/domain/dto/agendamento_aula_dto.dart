import 'package:diario_aula/domain/dto/objetivos_aula_dto.dart';

class SolicitacaoFeedbackDTO {
  final DateTime dataAula;
  final ObjetivosAulaDTO objetivosAula;
  final String feedback;
  final String autoAvaliacao;

  SolicitacaoFeedbackDTO({required this.dataAula, required this.objetivosAula, required this.autoAvaliacao, required this.feedback});
}