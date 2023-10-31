class Medico < ApplicationRecord
    has_many :consulta, dependent: :destroy
end
