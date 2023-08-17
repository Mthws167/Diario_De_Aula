import 'package:diario_aula/domain/entities/turma.dart';

class AlunoDTO {
  final String nome;
  final Turma turma;

  AlunoDTO({required this.nome, required this.turma});
}