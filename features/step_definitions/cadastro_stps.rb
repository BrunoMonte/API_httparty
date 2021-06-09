@caminho
Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br/"
    click_on "EXPERIMENTE AGORA"
   
end
  
Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash                #rows_hash conerte a tabela no formato pipe,p/ objeto nativo Ruby

    remover_usuario user [:email]

    find("input[name*=email]").set user[:email]                               #find elemento capybara para buscar elemento
    find("input[placeholder='Sua senha secreta' ]").set user[:senha]
    find("input[placeholder='Confirme a senha' ]").set user[:senha_confirma]

    click_on "Cadastrar"

end
  
Então('devo ser redirecionado para a área logada') do
    expect(page).to have_css '.dashboard'   #a pag, deve conter o css 'dashboard'
end