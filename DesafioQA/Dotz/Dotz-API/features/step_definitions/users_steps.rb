

Quando('que eu faço uma requisição GET para buscar a cidade de origem') do
  @request_users = users.get_users
end


Então('retornar status code {int}') do |status_code|
  expect(@request_users.code).to eq status_code
  puts @request_users
 
end



Quando('faço uma requisição GET para buscar a latitude e longitude') do
  @request_users = users.get_user
end

Então('retorna o usuario com {int}') do |status_code|
  expect(@request_users.code).to eq status_code
  puts @request_users
end

Quando('faço uma requisição GET invalida') do
  @request_users = users.get_invalido
end

Então('retorna o usuario invalido com {int}') do |status_code|
  expect(@request_users.code).to eq status_code
  puts @request_users
end

