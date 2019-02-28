# language: pt

Funcionalidade: Realizar novos calculos no app

Cenario: Realizar um novo calculo de prazo com sucesso
    Dado que estou na tela inicial do app
    Quando clico em Novo calculo
        E preencho os dados de calculo
        E seleciono a opcao de Calcular somente o prazo
    Entao devo ver os prazos exibidos na tela do app
        E devo conseguir visualizar o meu calculo salvo

Cenario: Acessar calculo salvo
    Dado que estou na tela inicial do app
        E clico em Calculos Salvos
    Quando seleciono e apago o meu calculo salvo anteriormente
    Entao devo deixar de ver o calculo salvo
    
