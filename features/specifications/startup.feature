# language: pt

@startup
Funcionalidade: Manter dados de Startup através da API 

Como um usuário do sistema 
Quero realizar requisições na API
Afim de manipular as informações de cadastro de startup

Cenário: Cadastrar uma Startup
	Dado o endereço da API para manter o cadastro de Startup
	Quando realizar uma requisição para cadastrar uma Startup
	Então a API irá retornar os dados do cadastro da Startup respondendo o código 200
	