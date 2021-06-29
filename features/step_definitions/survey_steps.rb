# frozen_string_literal: true

Quando('eu preencher todos os campos obrigatórios') do
  input_questions = {
    'Nome': 'Hugo',
    'Sobrenome': 'Tavares de Almeida',
    'Email': 'hugo_tavares@id.uff.br',
    'Confirmação de email': 'hugo_tavares@id.uff.br',
    'Qual linguagem de programação te interessa': 'Ruby, Javascript, Java, Python, C#, Clojure'
  }

  select_questions = {
    "Quanto tempo você está na área de QA?": "Menos de 5 anos",
    "O que te atraiu na área?": 'Sou mega chato'
  }

  radio_questions = {
    'Idade': '18-30',
    'O que mais você precisa melhorar?': 'Liderança'
  }

  @survey_page.fill_inputs(input_questions)
  @survey_page.click_radios(radio_questions)
  @survey_page.select_options(select_questions)
  @survey_page.send
end

Entao('deve ser direcionado para uma página de sucesso') do
  expect(@survey_page.success?).to eq(true)
end
