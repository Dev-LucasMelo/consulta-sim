class Paciente < ApplicationRecord
    #relacionamentos
    has_one :endereco, dependent: :destroy
    accepts_nested_attributes_for :endereco

    #validates
    validates :nome , presence: true, length: { minimum: 10 , message: "nao pode ter menos que 10 digitos"} , format: { without: /\d/, message: "Nome não pode conter números" }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "não é um formato de e-mail válido" }, confirmation: { case_sensitive: false }
    validates :data_nascimento, presence: true
    validate :validar_data_de_nascimento
    validates :cpf , presence: true, length: { minimum: 11, maximum:11 ,message: "deve ter exatamente 11 digitos" }
     

    def validar_data_de_nascimento
        if data_nascimento.present? && data_nascimento > Date.today
          errors.add(:data_nascimento, "não pode estar no futuro")
        elsif data_nascimento.present? && data_nascimento > 1.years.ago.to_date
          errors.add(:data_nascimento, "deve ser de pelo menos 1 anos atrás")
        end
    end
end
