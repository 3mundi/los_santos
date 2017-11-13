RSpec.describe Date do
  describe 'Date implement name_day' do
    it 'should return an array of String' do
      names = Date.new(1993,05,22).name_day
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include? 'Emile').to be true
    end
  end

  describe 'DateTime implement name_day' do
    it 'should return an array of String' do
      names = DateTime.new(1993,05,22).name_day
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include? 'Emile').to be true
    end
  end
end
