json.extract! paciente, :id, :nome, :email, :data_nascimento, :cpf, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
