Feature:
  As a medico
  I want to adicionar cadastro de medico
  So that nao precise fazer isso manualmente

  Scenario: Cadastrar um novo medico
    Given Estou na pagina de cadastrar medico
    When eu preencho os dados nome 'lucas teste' cpf '71493574400' email 'teste2@gmail.com' especialidade 'pediatra' crm '12345678'
    And eu clico no botao criar medico
    Then vejo que cadastro do medico foi efetuado com sucesso

   Scenario: Atualizar um medico
    Given Estou na pagina de atualizar medico
    When eu preencho os dados nome 'lucas teste' cpf '71493574400' email 'teste2@gmail.com' especialidade 'pediatra' crm '12345678'
    And eu clico no botao criar medico
    Then vejo que cadastro do medico foi efetuado com sucesso