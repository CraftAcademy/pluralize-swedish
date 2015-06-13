require 'active_support'
require 'active_support/core_ext/string'

module PluralizeSwedish
  def self.pluralize(word)
    Inflections.pluralize(word)
  end
end

require 'pluralize-swedish/inflections'
require 'core_extensions/string'

PluralizeSwedish::Inflections.inflections do |i|
  PluralizeSwedish::Inflections::inflections_plural(i)
  PluralizeSwedish::Inflections::inflections_singular(i)
  PluralizeSwedish::Inflections::inflections_irregular(i)
  PluralizeSwedish::Inflections::inflections_uncountable(i)
end
