require 'minitest/autorun'
require_relative '../lib/roman'

describe Roman do

  before do
	@roman = Roman.new
  end
  
  it 'should convert 1 to I' do
	@roman.convert(1).must_equal "I"
  end
  it 'should convert 2 to II' do
	@roman.convert(2).must_equal "II"
  end
  it 'should convert 3 to III' do
	@roman.convert(3).must_equal "III"
  end
  it 'should convert 4 to IV' do
	@roman.convert(4).must_equal "IV"
  end
  it 'should convert 15 to XV' do
	@roman.convert(15).must_equal "XV"
  end
  it 'should convert 27 to XXVII' do
	@roman.convert(27).must_equal "XXVII"
  end
  it 'should convert 30 to XXX' do
	@roman.convert(30).must_equal "XXX"
  end
  it 'should convert 42 to XLII' do
	@roman.convert(42).must_equal "XLII"
  end
  it 'should convert 56 to LVI' do
	@roman.convert(56).must_equal "LVI"
  end
  it 'should convert 73 to LXXIII' do
	@roman.convert(73).must_equal "LXXIII"
  end
  it 'should convert 82 to LXXXII' do
	@roman.convert(82).must_equal "LXXXII"
  end
  
  it 'should convert 99 to XCIX' do
	@roman.convert(99).must_equal "XCIX"
  end
end
