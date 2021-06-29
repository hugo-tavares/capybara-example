require 'base64'

Before do
  @home_page = HomePage.new
  @survey_page = SurveyPage.new
  page.current_window.resize_to(1920, 1080)
end

After do
  temp_shot = page.save_screenshot('log/temp_shot.png')
  File.open(temp_shot, 'rb') do |file|
    attach(file.read, 'image/png')
  end
end
