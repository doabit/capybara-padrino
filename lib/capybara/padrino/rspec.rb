module Capybara
  module Padrino
    RSpec.configure do |config|
       def config.escaped_path(*parts)
          Regexp.compile(parts.join('[\\\/]') + '[\\\/]')
        end

       config.include Capybara::DSL, :example_group => {
         :file_path => config.escaped_path(%w[spec features])
       }
    end
  end
end
