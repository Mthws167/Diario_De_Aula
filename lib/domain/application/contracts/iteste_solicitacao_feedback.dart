import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';

abstract class ITesteSolicitacaoFeedback {
  bool validarAgendamento(SolicitacaoFeedbackDTO agendamentoAulaDTO);
}
