import 'dart:math';

import '../lib/domain/dto/agendamento_aula_dto.dart';
import '../lib/domain/entities/aula.dart';
import '../lib/domain/entities/turma.dart';
import '../lib/domain/entities/objetivos_aula.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Pode agendar aula', () {
    var agendamento = Aula(agendamentoAula: AgendamentoAulaDTO(turma: Turma(nome: '4º ano engenharia de software'), dataAula: DateTime.now()));
    expect(agendamento.validarAgendamento(), true);
  });
}