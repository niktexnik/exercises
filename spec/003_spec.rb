require 'rspec'
require_relative '../003.rb'

RSpec.describe '#max_odd' do
  it 'returns max odd 3' do
    expect(max_odd([1, 2, 3, 4, 4])).to eq(3)
  end

  it 'returns max odd 21.0' do
    expect(max_odd([21.0, 2, 3, 4, 4])).to eq(21.0)
  end

  it 'returns max_odd 3' do
    expect(max_odd(['ololo', 2, 3, 4, [1, 2], nil])).to eq(3)
  end

  it 'returns max_odd nil' do
    expect(max_odd(%w[ololo fufufu])).to eq(nil)
  end

  it 'returns max_odd nil' do
    expect(max_odd([2, 2, 4])).to eq(nil)
  end

  it 'returns max_odd 3.77912893719838)' do
    expect(max_odd([1, 2, 3.17912893719823, 4, 4, 3.77912893719838])).to eq(3.77912893719838)
  end
end
