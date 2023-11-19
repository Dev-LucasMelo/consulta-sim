require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "consulta sem marcar data" do
    consulta = Consultum.new data: nil
    assert_not consulta.save, "nao e permitido marcar uma consulta sem data especifica"
  end

  test "consulta sem marcar hora" do
    consulta = Consultum.new hora: nil
    assert_not consulta.save, "nao e permitido marcar uma consulta sem horario especifico"
  end

end
