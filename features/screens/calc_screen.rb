class CalcScreen < BaseScreen
    def initialize(seconds = 4)
        catch_for_id('lbl_mensagem_ori_dest', seconds)
        catch_for_id('txt_data', seconds)
        catch_for_id('txt_cep_ori', seconds)
        catch_for_id('txt_cep_dest', seconds)
        catch_for_id('txt_cep_dest', seconds)
        catch_for_id('checkSoPrazo', seconds)
        catch_for_id('button_prox', seconds)
    end

    def tap_origem_textField
        touch_element_for_id('txt_cep_ori')
    end

    def tap_origem
        
    end


end