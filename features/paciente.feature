Feature:
  As a paciente
  I want to adicionar cadastro de paciente
  So that eu possa agendar uma consulta

  Scenario: cadastrar paciente
    Given Estou na pagina de cadastrar paciente
    When eu preencho os dados nome 'doutor lucas' email 'Lucas@gmail.com' data_nascimento '2002-11-07' cpf '71493574400' cep '55294310' cidade 'garanhuns' bairro 'brasilia' logradouro 'testeee' complemento 'teste complemento'
    And eu clico no botao enviar
    Then vejo que os dados do paciente estao corretos

Scenario: atualizar paciente
    Given Estou na pagina de atualizar o paciente
    When eu preencho os dados nome 'doutor lucas' email 'Lucas@gmail.com' data_nascimento '2002-11-07' cpf '71493574400' cep '55294310' cidade 'garanhuns' bairro 'brasilia' logradouro 'testeee' complemento 'teste complemento'
    And eu clico no botao enviar
    Then vejo que os dados do paciente estao corretos