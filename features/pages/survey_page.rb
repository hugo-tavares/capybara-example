# frozen_string_literal: true

class SurveyPage < BasePage
  include Capybara::DSL

  def fill_inputs(params)
    params.each do |key, value|
      puts "KEY: #{key} - VALUE: #{value}"
      fill_input(key, value)
    end
  end

  def select_options(params)
    params.each do |key, value|
      select_option(key, value)
    end
  end

  def click_radios(params)
    params.each do |key, value|
      click_radio(key, value)
    end
  end

  def send
    find(:xpath, "//input[@value='Enviar']").click
  end

  def success?
    page.has_css?('.nf-response-msg')
  end

  private

  def element(label)
    "//div[./div/label[normalize-space(text()) = '#{label}']]"
  end

  def input_element(label)
    "#{element label}//input"
  end

  def radio_element(label, value)
    "#{element label}//label[contains(.,'#{value}')]"
  end

  def fill_input(label, value)
    find(:xpath, input_element(label)).set(value)
  end

  def select_option(label, value)
    select(value, from: label)
  end

  def click_radio(label, value)
    find(:xpath, radio_element(label, value)).click
  end

end
