RSpec.describe Time do
  describe 'Time implement name_day' do
    it 'should accept a Time and return an array of String' do
      names = Time.new(1993, 5, 22).name_day
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include?('Emile')).to be true
    end
  end
end
