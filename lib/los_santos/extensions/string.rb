# implement method name_day? to the class String
require 'rubygems'
require 'active_support/inflector'

class String
  def name_day?(date = Time.now.localtime)
    LosSantos.name_day(date).each do |name|
      return true if name.parameterize == self.parameterize
    end
    false
  end
end
