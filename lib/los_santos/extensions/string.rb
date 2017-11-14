# implement method name_day? to the class String
class String
  def name_day?(date = Time.now.localtime)
    LosSantos.name_day(date).include? self
  end
end
