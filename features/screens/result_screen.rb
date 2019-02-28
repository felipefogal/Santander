class ResultScreen < BaseScreen
    def initialize(seconds = 5)
        catch_for_id('lbl_data', seconds)
        catch_for_id('lbl_origem', seconds)
        catch_for_id('tv_origem', seconds)
        catch_for_id('lbl_destino', seconds)
        catch_for_id('tv_destino', seconds)
        catch_for_id('lbl_mensagem_prazo', seconds)
        catch_for_id('lbl_mensagem_form', seconds)
        catch_for_id('action_salvar', seconds)
        catch_for_xpath('/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.ImageView', seconds)
        catch_for_xpath('/hierarchy/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.RelativeLayout[1]/android.widget.TextView', seconds)
    end

    def tap_salvar_button
        touch_element_for_id('action_salvar')
    end
end

