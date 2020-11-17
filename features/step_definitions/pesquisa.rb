Dado('que eu acesse a página da VV Test') do
    @pesquisa = PesquisaPage.new
    @pesquisa.load
end

Dado('acesse o menu {string}') do |string|
    @pesquisa.acessar_menu_pesquisa
end

Quando('eu preencher todos os campos obrigatórios') do
    @pesquisa.preencher_formulario
    @pesquisa.enviar_pesquisa
    sleep(2)
end

Então('deve ser direcionado para uma página de sucesso') do
    expect(page).to have_content('Pesquisa para o profissional da área de Qualidade:')
    expect(page).to have_content('Your form has been successfully submitted.')
end