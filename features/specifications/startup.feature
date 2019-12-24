# language: pt

@startup
Funcionalidade: Manter dados de Startup através da API 

Como um usuário do sistema 
Quero realizar requisições na API
Afim de manipular as informações de cadastro de startup

@cadastrar
Cenário: Cadastrar uma Startup
	Dado o endereço da API para manter o cadastro de Startup
	Quando realizar uma requisição para cadastrar uma Startup
	Então a API irá retornar os dados do cadastro da Startup respondendo o código 201

@consultar
Cenário: Consultar uma Startup
	Dado o endereço da API para manter o cadastro de Startup
	Quando realizar uma requisição passando o ID de uma Startup
	Então a API irá retornar os dados da Startup correspondente respondendo com o código 200

@alterar
Cenário: Alterar uma Startup
	Dado o endereço da API para manter o cadastro de Startup
	Quando realizar uma requisição para alterar uma Startup
	Então a API irá retornar os dados da Startup alterados respondendo com o código 200

@deletar
Cenário: Deletar uma Startup
	Dado o endereço da API para manter o cadastro de Startup
	Quando realizar uma requisição para excluir uma Startup
	Então a API irá retornar os dados da exclusão respondendo com o código 200