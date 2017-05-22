#language: pt
#utf-8

@edicao
Funcionalidade: efetuar a edicao de um empregado existente
	Eu como usuario 
	Quero acessar o site http://opensource.demo.orangehrmlive.com
	Para fazer a edicao de um empregado existente


	Cenario: efetuar a edicao de um empregado existente
		Dado que acessei o site http://opensource.demo.orangehrmlive.com
		Quando efetuar a edicao das informacoes do cadastro de um empregado existente 
		E clicar em salvar
		Entao a edicao do cadastro do empregado sera efetuada com sucesso