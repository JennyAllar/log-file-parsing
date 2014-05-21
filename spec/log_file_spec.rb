require 'spec_helper'
require 'log_file'

describe 'log_file' do
  
  
  it 'can output the dates covered in the log' do
    data = <<-INPUT
I, [2014-05-10T14:48:19.099705 #85971]  INFO -- : deploy customized experiences
    INPUT
    
    actual = LogFile.new(data).parse
    expected = ["2014-05-10"]
    expect(actual).to eq expected
  end  
  
  it 'can count then number of logs' do
    data = <<-INPUT
W, [2014-05-10T13:49:19.049260 #83516]  WARN -- : deliver B2C systems
D, [2014-05-10T14:48:19.093626 #85971] DEBUG -- : maximize proactive e-business
I, [2014-05-10T14:48:19.093737 #85971]  INFO -- : benchmark vertical functionalities
D, [2014-05-10T14:48:19.093772 #85971] DEBUG -- : monetize turn-key partnerships
    INPUT
    
    actual = LogFile.new(data).count
    expected = 4
    expect(actual).to eq expected
  end
  
end