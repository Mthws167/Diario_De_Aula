import '../entities/turma.dart';
import '../entities/objetivos_aula.dart';

class AgendamentoAulaDTO {
  final DateTime dataAula;
  final Turma turma;

  AgendamentoAulaDTO({required this.turma, required this.dataAula});
}