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

  puts "Este cadastro representa o número " + $id = $response["id"] + "° da lista"
end

Quando("realizar uma requisição passando o ID de uma Startup") do
  $get = @startup.getStartup($id)
end

Então("a API irá retornar os dados da Startup correspondente respondendo com o código {int}") do |int|
    expect($get.code).to eq(int)
    puts "Response code: #{$get.code}"
    expect($get.message).to eq("OK")
    puts "Response message: #{$get.message}"
    expect($get["id"]).to eq($response["id"])
    
    puts "ID     : #{$get[0]["id"]}"
    puts "Data   : #{$get[0]["data"]}"
    puts "Nome   : #{$get[0]["nome"]}"
    puts "Conta  : #{$get[0]["conta"]}"
    puts "Cidade : #{$get[0]["cidade"]}"
    puts "Status Code: #{$get.code}"
end

Quando("realizar uma requisição para alterar uma Startup") do
  $put = @startup.putStartup($get["id"])
end

Então("a API irá retornar os dados da Startup alterados respondendo com o código {int}") do |int|
  expect($put.code).to eq(int)
  expect($put.message).to eq("OK")
  expect($put["id"]).to eq($response["id"])

  puts "ID    : #{$put["id"]}"
  puts "Data  : #{$put["data"]}"
  puts "Nome  : #{$put["nome"]}"
  puts "Conta : #{$put["conta"]}"
  puts "Cidade: #{$put["cidade"]}"
  puts "Status Code: #{$put.code}"
end

Quando("realizar uma requisição para excluir uma Startup") do
  
end

Então("a API irá retornar os dados da exclusão respondendo com o código {int}") do |int|
  
end