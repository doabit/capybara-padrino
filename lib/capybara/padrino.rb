require "capybara/padrino/version"

module Capybara
  module Padrino

   ::Padrino.load!
    Capybara.app = Rack::Builder.new do
      map "/" do
        run ::Padrino.application
      end
    end.to_app

    Capybara.save_and_open_page_path = File.join(::Padrino.root, 'tmp/capybara')

  end
end
