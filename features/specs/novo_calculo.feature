# language: pt

Funcionalidade: Realizar novos calculos no app

Cenario: Realizar um novo calculo de prazo com sucesso
    Dado que estou na tela inicial do app
    Quando clico em Novo calculo
        E preencho os dados de calculo
        E seleciono a opcao de Calcular somente o prazo
    Entao devo ver os prazos exibidos na tela do app
    
