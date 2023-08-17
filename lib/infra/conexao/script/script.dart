final criarBanco = [
  '''
    CREATE TABLE OBJETIVOS_AULA (
      id INTEGER NOT NULL PRIMARY KEY,
      descricao VARCHAR(255) NOT NULL
    )
  ''',
  '''    
    CREATE TABLE TURMA (
      id INTEGER NOT NULL PRIMARY KEY,
      nome VARCHAR(255) NOT NULL
    )
  ''',
  '''    
    CREATE TABLE SOLICITACAO_FEEDBACK (
      id INTEGER NOT NULL PRIMARY KEY,
      data_aula TIMESTAMP NOT NULL,
      feedback VARCHAR(255) NOT NULL,
      auto_avaliacao VARCHAR(255) NOT NULL,
      FOREIGN KEY (objetivos_aula) REFERENCES OBJETIVOS_AULA(id)
    )
  ''',
  '''
    INSERT INTO TURMA (nome) VALUES ('4º')
  ''',
  '''
    INSERT INTO TURMA (nome) VALUES ('3º')
  ''',
  '''
    INSERT INTO TURMA (nome) VALUES ('2º')
  ''',
  '''
    INSERT INTO TURMA (nome) VALUES ('1º')
  ''',
];
