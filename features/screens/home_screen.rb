class HomeScreen < BaseScreen
    def initialize(seconds = 5)
        catch_for_name('Novo cálculo', seconds)
    end

    def go_to_cep_page
        touch_element_for_name('Novo cálculo')
    end
end