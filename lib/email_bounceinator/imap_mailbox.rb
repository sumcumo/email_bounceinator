require 'net/imap'
require 'pry'

module EmailBounceinator
  class ImapMailbox

    def initialize
      open_mailbox
    end

    def all
      read
    end

    def bounces
      # not yet implemented
    end

    private

    def open_mailbox
      @imap = Net::IMAP.new(config.imap_hostname, ssl: config.imap_ssl)
      @imap.login(config.imap_username, config.imap_password)
      @imap.select('INBOX')
    end

    def read
      # @imap.search(["RECENT"]).each do |message_id|
      #   envelope = @imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
      #   puts "#{envelope.from[0].name}: \t#{envelope.subject}"
      #   #puts message_id
      # end
      @imap.examine('INBOX').each do |message_id|
        puts message_id
      end
    end

    def config
      EmailBounceinator.configuration
    end
  end
end