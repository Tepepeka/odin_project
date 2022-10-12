require_relative('../lib/caesar_cipher')

describe 'The caesar cipher' do
  it 'should return a modified string' do 
    expect(caesar("what a stringz!", 5)).to eq("bmfy f xywnsle!")
    expect(caesar("what a stringz!", -5)).to eq("rcvo v nomdibu!")
    expect(caesar("wHat a striNgz!", 5)).to eq("bMfy f xywnSle!")
    expect(caesar("wHat a striNgz!", -5)).to eq("rCvo v nomdIbu!") 
    expect(caesar(4, -5)).to eq("") 
  end
end