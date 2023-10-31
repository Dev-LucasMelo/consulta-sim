class Endereco < ApplicationRecord
  #relacionamentos
  belongs_to :paciente

  #validates
  validates :cep, presence: true, length: { maximum: 8, minimum:8, message: "Deve conter exatamente 8 digitos" },numericality: { only_integer: true }
  validates :cidade, presence: true, format: { without: /\d/, message: "Nome não pode conter números" },length: { minimum: 4 }  
  validates :bairro, presence: true, format: { without: /\d/, message: "Nome não pode conter números" },length: { minimum: 5 } 
  validates :logradouro, presence: true, length: { minimum: 5 }
  validates :complemento, presence: true,length: { minimum: 10, maximum: 40}
end
