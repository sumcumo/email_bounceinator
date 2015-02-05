require 'rails'
require 'email_bounceinator'

class Railtie < ::Rails::Railtie
  initializer 'email_bounceinator.load_config' do |app|
    puts 'email_bounceinator for Rails not implemented yet'
  end
end