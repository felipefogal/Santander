class ResultScreen < BaseScreen
    def initialize(seconds = 5)
        catch_element_for_id('lbl_data', seconds)
        catch_element_for_id('lbl_origem', seconds)
        catch_element_for_id('tv_origem', seconds)
        catch_element_for_id('lbl_destino', seconds)
        catch_element_for_id('tv_destino', seconds)
        catch_element_for_id('lbl_mensagem_prazo', seconds)
        catch_element_for_name('Obs.: Para fins de contagem de prazo de entrega, sábados, domingos e feriados não são considerados dias úteis. Postagens ocorridas aos sábados, domingos, feriados e depois do horário limite de postagem (DH), considerar o próximo dia útil como o Dia da Postagem.', seconds)
        catch_element_for_id('lbl_mensagem_form', seconds)
        sleep(4)
    end
end