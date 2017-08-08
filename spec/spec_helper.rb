require "active_support/all"
require './lib/pluralize-swedish'
require './lib/core_extensions/string'
require 'pry'
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

def sv_pluralize(count, singular, plural = nil)
  word = if (count == 1 || count =~ /^1(\.0+)?$/)
           singular
         else
           plural || singular.swedish_pluralize
         end

  "#{count || 0} #{word}"
end
