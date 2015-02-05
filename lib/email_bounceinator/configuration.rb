module EmailBounceinator
  #
  # Configuration for EmailBounceinator
  #
  class Configuration
    attr_accessor :imap_hostname, :imap_ssl, :imap_username, :imap_password, :imap_mailbox

    # set the default values for the available configuration attributes
    def initialize
      @imap_hostname  = ''
      @imap_ssl       = true
      @imap_username  = ''
      @imap_password  = ''
      @imap_mailbox   = ''
    end
  end
end
