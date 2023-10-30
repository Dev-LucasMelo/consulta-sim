class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :email
      t.date :data_nascimento
      t.string :cpf

      t.timestamps
    end
  end
end
