RSpec.describe LosSantos do
  it 'has a version number' do
    expect(LosSantos::VERSION).not_to be nil
  end

  it 'should return an array of string' do
    names = LosSantos.name_day '22-05'
    expect(names.class).to be Array
    expect(names).not_to be nil
    expect(names.include? 'Emile').to be true
  end

  it 'should return nil and put the usage' do
    expect(STDOUT).to receive(:puts).with('Usage: LosSantos.name_day [\'dd-mm\']')
    names = LosSantos.name_day 22-05
    expect(names).to be nil
  end
end
