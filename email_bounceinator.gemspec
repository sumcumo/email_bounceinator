# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'email_bounceinator/version'

Gem::Specification.new do |spec|
  spec.name          = "email_bounceinator"
  spec.version       = EmailBounceinator::VERSION
  spec.authors       = ["Andy Wenk"]
  spec.email         = ["andy@sumcumo.com"]
  spec.summary       = %q{Detect and handle email bounces in an IMAP mailbox}
  spec.description   = %q{Detect and handle email bounces in an IMAP mailbox}
  spec.homepage      = "https://github.com/sumcumo/email_bounceinator"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
