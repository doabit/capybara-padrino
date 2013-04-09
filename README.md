# Capybara::Padrino

Capybara and rspec config for padrino.

## Installation

Add this line to your application's Gemfile:

    group :test do
      gem "capybara-padrino"
    end

Or

    group :test do
      gem "capybara-padrino", github: "doabit/capybara-padrino"
    end

And then execute:

    $ bundle

## Usage

If you are using rspec, and don't want to write ":type => :feature" for every feature spec, then add

     require "capybara/padrino/rspec"

in spec_helper.rb. Now put your Capybara specs in spec/features and write your specs like so:

    describe "the signup process" do
      before :each do
        User.make(:email => 'user@example.com', :password => 'caplin')
      end

      it "signs me in" do
        visit '/sessions/new'
        within("#session") do
          fill_in 'Login', :with => 'user@example.com'
          fill_in 'Password', :with => 'password'
        end
        click_link 'Sign in'
        page.should have_content 'Success'
      end
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
π
