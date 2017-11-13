module LosSantos
  def self.parse_string(date)
    regexp = /[0-9]{4}-[0-9]{2}-[0-9]{2}/
    if regexp === date
      return Date.parse(date)
    else
      raise ArgumentError, "String usage: LosSantos.name_day 'yyyy-mm-dd'"
    end
  end
end
