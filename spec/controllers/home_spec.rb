require 'spec_helper'

#Using Basic Rack Test
describe 'Home Page' do
  it 'should be ok' do
    get '/'
    expect(last_response).to be_ok
  end  
end  



