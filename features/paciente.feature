Feature:
  As a paciente
  I want to adicionar cadastro de paciente
  So that eu possa agendar uma consulta

  Scenario: cadastrar paciente
    Given Estou na pagina de cadastrar paciente
    When eu preencho os dados nome 'Lucas Messias' email 'Lucasteste@gmail.com' cpf '71493574400' data_nascimento '2002-11-07' cep '55294310' cidade 'Garanhuns' bairro 'Brasilia' logradouro 'rua pedro rodrigues' complemento 'teste complemento'
    And eu clico no botao enviar
    Then vejo que cadastro do paciente foi efetuado com sucesso

Scenario: atualizar paciente
    Given Estou na pagina de cadastrar paciente
    When eu preencho os dados nome 'Lucas Melo' email 'Lucasteste@gmail.com' cpf '71493574400' data_nascimento '2002-11-07' cep '55294310' cidade 'Garanhuns' bairro 'Brasilia' logradouro 'rua pedro rodrigues' complemento 'teste complemento'
    And eu clico no botao enviar
    Then vejo que os dados do paciente foram atualizados com sucesso