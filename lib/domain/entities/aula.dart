import 'turma.dart';
import '../dto/agendamento_aula_dto.dart';
import '../portas/primaria/iagendamento_aula.dart';

class Aula implements IAgendamentoAula {
  final AgendamentoAulaDTO agendamentoAula;

  Aula({required this.agendamentoAula});

  bool validarAgendamento() {
    return true;
  }
}