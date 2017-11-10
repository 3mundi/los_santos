require 'los_santos/version'
require 'yaml'

module LosSantos
  ALLOWED_FORMAT = [String, Date, DateTime].freeze

  # Usage: LosSantos.name_day [\'dd-mm\']
  def self.name_day(date_string = Time.now.strftime('%d-%m'))
    unless ALLOWED_FORMAT.include? date_string.class
      raise ArgumentError, 'Only String and Date are allowed'
    end
    data = YAML.load_file('lib/los_santos/data/fr.yml')
    date_split = date_string.split('-')
    data[date_split[1].to_i][date_split[0].to_i]
  end
end
