import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';
import 'package:diario_aula/domain/dto/aluno_dto.dart';


abstract class IDAOSolicitacaoFeedback {
   Future<bool> salvar({SolicitacaoFeedbackDTO solicitacaoFeedbackDTO});
   Future<bool> buscar({AlunoDTO aluno});
}