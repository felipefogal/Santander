Dado(/^que estou na tela inicial do app$/) do
    sleep(10)
    homescreen = HomeScreen.new(5)
    homescreen.go_to_cep_page
end
  
Quando(/^clico em Novo calculo$/) do

end
  
Quando(/^preencho os dados de calculo$/) do

end

Quando(/^seleciono a opcao de Calcular somente o prazo$/) do

end

Entao(/^devo ver os prazos exibidos na tela do app$/) do

end