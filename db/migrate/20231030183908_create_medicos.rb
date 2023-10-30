class CreateMedicos < ActiveRecord::Migration[7.0]
  def change
    create_table :medicos do |t|
      t.text :nome
      t.string :cpf
      t.text :email
      t.text :especialidade
      t.string :crm

      t.timestamps
    end
  end
end
