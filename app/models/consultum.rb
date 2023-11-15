class Consultum < ApplicationRecord
  #relacionamentos
  belongs_to :paciente
  belongs_to :medico

  #validates
  validates :data, presence: true
  validates :hora, presence: true
  validates :paciente_id, presence: true

end
