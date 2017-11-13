require 'los_santos/version'
require 'yaml'

module LosSantos
  ALLOWED_CLASS = [String, Date, Time, DateTime].freeze

  def self.name_day(date = Time.now)
    begin
      date = Date.strptime(date, '%d-%m') if date.class == String
    rescue ArgumentError
      raise ArgumentError, "String usage: LosSantos.name_day 'dd-mm'"
    end
    unless ALLOWED_CLASS.include? date.class
      raise ArgumentError, 'Only String, Date, Time and DateTime are allowed'
    end
    data = YAML.load_file('lib/los_santos/data/fr.yml')
    data[date.month][date.day]
  end
end
