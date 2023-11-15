require "test_helper"

class PacienteTest < ActiveSupport::TestCase
   test 'paciente com nome invalido' do
     paciente = Paciente.new  nome: "t", email: "lucasmelo@gmail.com" , data_nascimento: "2002-11-07", cpf: "71493574400" 
     assert_not paciente.save, "paciente nao pode ser salvo"
   end

   test 'paciente com cpf invalido' do
    paciente = Paciente.new  nome: "lucas melo", email: "lucasmelo@gmail.com" , data_nascimento: "2002-11-07", cpf: "7149357440" 
    assert_not paciente.save, "paciente nao pode ser salvo"
  end
end
