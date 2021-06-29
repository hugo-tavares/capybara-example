# capybara-example

 This project is an example of BDD style automated testing using Ruby, Cucumber, RSpec and Capybara.
 
 ## Information
 - Ruby and Bundler must be installed
 - The chromedriver executable must be present in the system's path
 - The Hooks are contained in ```features/hooks/```
 - The Gherkin files are contained in ```features/specifications```
 - The Step Definitions are in ```features/step_definitions/```
 - The Page Objects are in ```features/pages/```

  ## Running
  ```
  bundle install
  cucumber
  ```
  
  ## Reports
  An html report is generated in ```log/report.html``` after the execution of the tests.
