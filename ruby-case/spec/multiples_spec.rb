require_relative('../lib/multiples')

describe 'The multiples 3 or 5 verif' do
  it 'should return TRUE when an integer is a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end
end

describe 'The sums of 3 or 5' do
  it 'Should return the value of the sum' do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
    expect(sum_of_3_or_5_multiples(-1)).to eq("it's not an integer or < 0")
    expect(sum_of_3_or_5_multiples('chiffre')).to eq("it's not an integer or < 0")
  end
end