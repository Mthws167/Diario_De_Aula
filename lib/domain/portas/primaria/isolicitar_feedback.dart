import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';
import 'package:diario_aula/domain/dto/aluno_dto.dart';

abstract class ISolicitarFeedback {
  Future<AlunoDTO> buscarFeedback(AlunoDTO alunoDTO);
  Future<bool> cadastrarFeedback(SolicitacaoFeedbackDTO solicitacaoFeedbackDTO);
}
