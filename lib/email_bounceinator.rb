require 'email_bounceinator/configuration'
require 'email_bounceinator/imap_mailbox'
require 'email_bounceinator/railtie' if defined?(Rails)
require 'email_bounceinator/version'

#
# Base module of the EmailBounceinator
#
module EmailBounceinator
  class << self
    attr_writer :configuration
    attr_accessor :errors

    # set the Configuration and memoize it to avoid
    # creating a new instance all the time
    #
    # @return [Object] configuration
    def configuration
      @configuration ||= Configuration.new
    end

    # method to be called for configuration. In Rails this would go
    # into an initializer
    #
    # @example set the Coniguration for  in an initializer
    #   EmailBounceinator.configure do |config|
    #     config.imap_mailbox = 'my.mailbox.com'
    #   end
    #
    # if EmailBounceinator is used as a cli program, this is handled
    # in bin/email_bounceinator
    #
    # @return [Object] configuration
    def configure
      yield(configuration)
    end
  end
end
