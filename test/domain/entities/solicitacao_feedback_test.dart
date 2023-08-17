import 'package:diario_aula/domain/dto/objetivos_aula_dto.dart';
import 'package:diario_aula/domain/dto/agendamento_aula_dto.dart';
import 'package:diario_aula/domain/entities/solicitacao_feedback.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Solicitação está válida', () {
    var objetivosAula = ObjetivosAulaDTO(descricao: "Entender a arquitetura");
    var dadosSolicitacao = SolicitacaoFeedbackDTO(dataAula: DateTime.now(), objetivosAula: objetivosAula, autoAvaliacao: "A", feedback: "Desejo um A pq sim");
    var solicitacao = SolicitacaoFeedback(solicitacaoFeedback: dadosSolicitacao);
    expect(solicitacao.validarAgendamento(), true);
  });
}
