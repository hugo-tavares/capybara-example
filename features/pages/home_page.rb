class HomePage < BasePage
  include Capybara::DSL

  def go
    visit '/'
  end

end
