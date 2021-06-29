# frozen_string_literal: true

Dado('que eu acesse a página da VV Test') do
  @home_page.go
end

Dado('acesse o menu {string}') do |menu|
  @home_page.go_to(menu)
end
