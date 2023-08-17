import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';

abstract class IDAOSolicitacaoFeedback {
   Future<bool> salvar({SolicitacaoFeedbackDTO solicitacaoFeedbackDTO});
}