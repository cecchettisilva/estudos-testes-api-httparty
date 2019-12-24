Dado("o endereço da API para manter o cadastro de Startup") do
  # Instanciado na classe Startup
end

Quando("realizar uma requisição para cadastrar uma Startup") do
  $response = @startup.postStartup
end

Então("a API irá retornar os dados do cadastro da Startup respondendo o código {int}") do |int|
  # Resultado esperado
  expect($response.code).to eq(201)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("Created")
  puts "Response message: #{$response.message}"

  # Imprime os dados do post
  puts "ID     : #{$response["id"]}"
  puts "Data   : #{$response["data"]}"
  puts "Nome   : #{$response["nome"]}"
  puts "Conta  : #{$response["conta"]}"
  puts "Cidade : #{$response["cidade"]}"
end