import 'package:diario_aula/domain/application/contracts/iteste_solicitacao_feedback.dart';
import 'package:diario_aula/domain/application/use_case/teste_solicitacao_feedback.dart';
import 'package:diario_aula/domain/dto/objetivos_aula_dto.dart';
import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Aluno pode solicitar feedback', () {
    var solicitacao = TesteSolicitacaoFeedback();
    var objetivosAula = ObjetivosAulaDTO(descricao: "Entender a arquitetura");
    var dadosSolicitacao = SolicitacaoFeedbackDTO(dataAula: DateTime.now(), objetivosAula: objetivosAula, autoAvaliacao: "A", feedback: "Desejo um A pq sim");
    expect(solicitacao.validarAgendamento(dadosSolicitacao), true);
  });
}
