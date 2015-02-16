require 'spec_helper'

#Using Basic Rack Test
describe 'Home' do
  it 'should be ok' do
    get '/'
    expect(last_response).to be_ok
  end  
end  

# Using HTML Matchers
describe 'Home' do
  it 'should have the app title' do
    get '/'
    expect(last_response.body).to have_tag('a', with: { href: '/login' } )
  end  
end  
