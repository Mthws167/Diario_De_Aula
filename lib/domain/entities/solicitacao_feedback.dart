import 'turma.dart';
import '../dto/agendamento_aula_dto.dart';

class SolicitacaoFeedback {
  final SolicitacaoFeedbackDTO solicitacaoFeedback;

  SolicitacaoFeedback({required this.solicitacaoFeedback});

  bool validarAgendamento () {
    return true;
  }

}