require 'yaml'

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
end
