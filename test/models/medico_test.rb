require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "medico com crm invalido" do
    medico = Medico.new nome: "Dr Messias", cpf: "71493574400", 
    email: "drmessias@gmail.com", especialidade: "pediatra",
    crm: "1234567"
    assert_not medico.save
  end
  test "medico com especialidade invalida" do
    medico = Medico.new nome: "Dr Messias", cpf: "71493574400", 
    email: "drmessias@gmail.com", especialidade: "abc",
    crm: "12345678"
    assert_not medico.save
  end
end
