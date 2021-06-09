require "capybara"
require "capybara/cucumber"

require_relative "helpers"      #dessa forma importo arquivo tem o modulo

World(Helpers)      #esse objeto do Ruby, carrega o modulo fazendo que todos os metodos,seja excução nativa

Capybara.configure do|config|
    config.default_driver = :selenium_chrome
end