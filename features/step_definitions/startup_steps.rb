Dado("o endereço da API para manter o cadastro de Startup") do
  # Instanciado na classe Startup
end

Quando("realizar uma requisição para cadastrar uma Startup") do
  $response = @startup.postStartup
end

Então("a API irá retornar os dados do cadastro da Startup respondendo o código {int}") do |int|
  puts "response body #{$response.body}"
  puts "response code #{$response.code}"
end