class Medico < ApplicationRecord
    #relacionamentos
    has_many :consulta, dependent: :destroy
    has_many :pacientes, through: :consultums
    

    #validates
    validates :nome , presence: true, length: { minimum: 10 , message: "nao pode ter menos que 10 digitos"} , format: { without: /\d/, message: "Nome não pode conter números" }
    validates :cpf , presence: true, length: { minimum: 11, maximum:11 ,message: "deve ter exatamente 11 digitos" }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "não é um formato de e-mail válido" }, confirmation: { case_sensitive: false }
    validates :especialidade, presence:true,  length: { minimum: 5, maximum: 20 }, format: { without: /\d/, message: "não pode conter números" }
    validates :crm, presence: true, length: { minimum: 8, maximum:8 ,message: "deve ter exatamente 8 digitos" }

end
