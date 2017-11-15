RSpec.describe String do
  describe 'String implement name_day?' do
    it 'should return false' do
      expect('DarthVader'.name_day?(Time.new(1993, 5, 22))).to be false
    end

    it 'should return true' do
      expect('Emile'.name_day?(Time.new(1993, 5, 22))).to be true
    end

    it 'should not be case sensitive' do
      expect('émile'.name_day?(Time.new(1993, 5, 22))).to be true
      expect('JEAN BAPTISTE'.name_day?(Time.new(1993, 4, 7))).to be true
    end
  end
end
