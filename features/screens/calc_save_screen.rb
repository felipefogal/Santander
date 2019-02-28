class CalcSaveScreen < BaseScreen
    def initialize(seconds = 5)
        catch_for_accessibility_id('Teste', seconds)
        catch_for_accessibility_id('Origem: 04306-020', seconds)
        catch_for_accessibility_id('Destino: 05065-080', seconds)
        catch_for_id('chk_selecao', seconds)
    end
end