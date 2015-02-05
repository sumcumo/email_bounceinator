require 'spec_helper'

RSpec.describe EmailBounceinator::Configuration do
  it 'is described module' do
    expect(described_class).to eq(EmailBounceinator::Configuration)
  end

  it 'has methods' do
    expect(described_class.new.respond_to?(:imap_hostname)).to be_truthy
    expect(described_class.new.respond_to?(:imap_ssl)).to be_truthy
    expect(described_class.new.respond_to?(:imap_username)).to be_truthy
    expect(described_class.new.respond_to?(:imap_password)).to be_truthy
    expect(described_class.new.respond_to?(:imap_mailbox)).to be_truthy
  end
end