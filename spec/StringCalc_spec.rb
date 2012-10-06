require 'StringCalc'

describe StringCalc do
  
  before do
    @sc = StringCalc.new
  end
  
  it 'should take a string' do
    @sc.add "123456"
  end

  #1
  it 'should return 0 on empty string' do
    @sc.add("").should == 0
  end

  #2
  it 'should return 1 when given only 1' do
    @sc.add("1").should == 1
  end

  it 'should return 25 when given only 25' do
    @sc.add("25").should == 25
  end

  #3
  it 'should return 7 when given only "2,5"' do
    @sc.add("2,5").should == 7
  end

  #4
  it 'should return 7 when given "2,2,3"' do
    @sc.add("2,2,3").should == 7
  end

  it 'should return 10 when given 1,2,3,4' do
    @sc.add('1,2,3,4').should == 10
  end

  #5
  it 'should return 10 when given 1,2\n3,4' do
    @sc.add("1,2\n3,4").should == 10
  end

  it 'handles literal linebreaks' do

derp = <<HERE
1
2
HERE
    @sc.add(derp).should == 3
  end

end
