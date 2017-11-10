require 'los_santos/version'
require 'yaml'

module LosSantos
  def self.name_day(date_string = Time.now.strftime('%d-%m'))
    data = YAML.load_file('lib/los_santos/data/fr.yml')
    begin
      date_split = date_string.split('-')
      return data[date_split[1].to_i][date_split[0].to_i]
    rescue NoMethodError
      return print_usage
    end
  end

  private

  def self.print_usage
    puts 'Usage: LosSantos.name_day [\'dd-mm\']'
  end
end
