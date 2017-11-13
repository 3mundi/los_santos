require 'yaml'

module LosSantos
  def self.load_data
    return YAML.load_file('lib/los_santos/data/fr.yml')
  end
end
