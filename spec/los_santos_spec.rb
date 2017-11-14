RSpec.describe LosSantos do
  it 'has a version number' do
    expect(LosSantos::VERSION).not_to be nil
  end

  describe 'invalid argument' do
    it 'should raise error for incorrect String value' do
      expect { LosSantos.name_day '22-05-1993' }.to raise_error(
        ArgumentError, "String usage: LosSantos.name_day 'yyyy-mm-dd'"
      )
    end

    it 'should raise error for incorrect date value' do
      expect { LosSantos.name_day '1993-05-36' }
        .to raise_error(ArgumentError, 'invalid date')
    end

    it 'should raise error for not allowed argument class' do
      expect { LosSantos.name_day Class.new }.to raise_error(
        ArgumentError, 'only String, Date, Time, DateTime are allowed'
      )
    end
  end

  describe 'valid argument' do
    it 'should accept a String' do
      names = LosSantos.name_day '1993-05-22'
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include?('Emile')).to be true
    end

    it 'should accept a Date' do
      names = LosSantos.name_day Date.new(1993, 5, 22)
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include?('Emile')).to be true
    end

    it 'should accept a Time' do
      names = LosSantos.name_day Time.new(1993, 5, 22)
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include?('Emile')).to be true
    end

    it 'should accept a DateTime' do
      names = LosSantos.name_day DateTime.new(1993, 5, 22)
      expect(names.class).to be Array
      expect(names).not_to be nil
      expect(names.include?('Emile')).to be true
    end
  end
end
