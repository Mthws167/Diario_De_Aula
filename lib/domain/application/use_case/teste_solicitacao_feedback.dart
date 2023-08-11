import 'package:diario_aula/domain/application/contracts/iteste_solicitacao_feedback.dart';
import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';
import 'package:diario_aula/domain/entities/solicitacao_feedback.dart';

class TesteSolicitacaoFeedback implements ITesteSolicitacaoFeedback { 

  bool validarAgendamento(SolicitacaoFeedbackDTO solicitacaoFeedbackDTO) {
    var agendamento = SolicitacaoFeedback(solicitacaoFeedback: solicitacaoFeedbackDTO);
    return agendamento.validarAgendamento();
  }

}