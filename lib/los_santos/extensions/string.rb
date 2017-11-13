class String
  def name_day?(date = Time.now.localtime)
    LosSantos.name_day(date).include? self
  end
end
