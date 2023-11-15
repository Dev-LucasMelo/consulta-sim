require "test_helper"

class PacienteTest < ActiveSupport::TestCase
   test 'testando o basico' do
     paciente = Paciente.new  
     assert_not paciente.save
   end
end
