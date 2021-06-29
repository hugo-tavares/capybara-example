# frozen_string_literal: true

class BasePage
  require 'securerandom'
  include Capybara::DSL

  def go_to(menu)
    find('#primary-menu').click_link(menu)
  end
end
