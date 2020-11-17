class PesquisaPage < SitePrism::Page
    set_url '?page_id=2'

    element :menu_pesquisa, '#menu-item-226 a'
    element :field_nome, '#nf-field-5'
    element :field_sobrenome, '#nf-field-6'
    element :field_email, '#nf-field-7'
    element :field_confirmacao_email, '#nf-field-8'
    element :field_telefone, '#nf-field-17'
    element :rdb_idade, '#nf-label-class-field-10-1'
    element :cmb_tempo_area, '#nf-field-11'
    element :cmb_atraiu_area, '#nf-field-12'
    element :rdb_precisa_melhorar, '#nf-field-13-wrap ul'
    element :field_linguagem, '#nf-field-14'
    element :field_msg, '#nf-field-15'
    element :btn_enviar, '#nf-field-16'

    def acessar_menu_pesquisa
        menu_pesquisa.click
    end  

    def preencher_formulario
        field_nome.set 'Leandro'
        field_sobrenome.set 'Castro'
        field_email.set 'leandro@mailinator.com'
        field_confirmacao_email.set 'leandro@mailinator.com'
        field_telefone.set '11981810081'
        choose('31-49', allow_label_click: true)
        cmb_tempo_area.select('mais de 5 anos')
        cmb_atraiu_area.select('Desafio')
        choose('Negócio', allow_label_click: true)
        field_linguagem.set 'Ruby'
        field_msg.set 'Resumo do plano de carreira.'    
    end

    def enviar_pesquisa
        btn_enviar.click
        sleep(1)        
    end
    
end