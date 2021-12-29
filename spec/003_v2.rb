require 'rspec'
require_relative '../003_v2.rb'

RSpec.describe '#max_odd' do
  it 'returns 3' do
    expect(max_odd([1, 2, 3, 4, 4])).to eq(3)
  end

  it 'returns 21.0' do
    expect(max_odd([21.0, 2, 3, 4, 4])).to eq(21.0)
  end

  it 'returns 3' do
    expect(max_odd(['ololo', 2, 3, 4, [1, 2], nil])).to eq(3)
  end

  it 'returns nil' do
    expect(max_odd(%w[ololo fufufu])).to eq(nil)
  end

  it 'returns nil' do
    expect(max_odd([2, 2, 4])).to eq(nil)
  end

  it 'returns 3.00' do
    expect(max_odd([1, 2, 3.17912893719823, 4, 4, 3.00])).to eq(3.00)
  end
end


