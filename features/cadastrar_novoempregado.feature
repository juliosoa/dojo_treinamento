#language: pt
#utf-8

@cadastro
Funcionalidade: efetuar o cadastramento de um novo empregado
	Eu como usuario 
	Quero acessar o site http://opensource.demo.orangehrmlive.com
	Para fazer o cadastro de um novo empregado


	Cenario: efetuar o cadatro de um novo empregado
		Dado que acessei o site http://opensource.demo.orangehrmlive.com
		Quando preencher todos os dados 
		Entao o cadastro sera efetuado