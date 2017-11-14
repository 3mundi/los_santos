require 'los_santos/version'
require 'los_santos/extensions/string'
require 'los_santos/extensions/date'
require 'los_santos/extensions/time'
require 'yaml'
require 'date'

# gem module
module LosSantos
  ALLOWED_CLASS = [String, Date, Time, DateTime].freeze

  def self.name_day(date = Time.now.localtime)
    unless ALLOWED_CLASS.include? date.class
      raise ArgumentError, "only #{ALLOWED_CLASS.join(', ')} are allowed"
    end
    date = parse_string(date) if date.class == String
    data = load_data
    return [] unless data && data[date.month] && data[date.month][date.day]
    data[date.month][date.day]
  end

  def self.parse_string(date)
    regexp = /[0-9]{4}-[0-9]{2}-[0-9]{2}/
    return Date.parse(date) if date =~ regexp
    raise ArgumentError, "String usage: LosSantos.name_day 'yyyy-mm-dd'"
  end

  def self.load_data
    YAML.load_file('lib/los_santos/data/fr.yml')
  end

  private_class_method :parse_string, :load_data
end
