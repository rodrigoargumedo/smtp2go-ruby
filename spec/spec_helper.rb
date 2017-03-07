$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require 'smtp2go'
require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
    c.cassette_library_dir = 'spec/cassettes'
    c.hook_into :webmock
    c.configure_rspec_metadata!
end
