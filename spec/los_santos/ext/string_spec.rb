RSpec.describe String do
  describe 'String implement name_day?' do
    it 'should return false' do
      expect('DarthVader'.name_day?(Time.new(1993, 5, 22))).to be false
    end

    it 'should return true' do
      expect('Emile'.name_day?(Time.new(1993, 5, 22))).to be true
    end
  end
end
