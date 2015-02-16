
# Using HTML Matchers
describe 'Home with Matchers' do
  context 'No user' do 
    it 'should have a login button' do
      get '/'
      expect(last_response.body).to have_tag('a', with: { href: '/login' } )
    end
    it 'should not have a logout button' do
      get '/'
      expect(last_response.body).to_not have_tag('a', with: { href: '/logout' } )
    end
  end  

  context 'With User' do
    let(:user){ FactoryGirl.create(:user) }
    let(:user_session){   { 'rack.session' => {:auth_user_id => user.id }} }
    it 'should not have a login button' do
      get '/',{}, user_session
      expect(last_response.body).to_not have_tag('a', with: { href: '/login' } )
    end
    it 'should have a logout button' do
      get '/',{}, user_session
      expect(last_response.body).to have_tag('a', with: { href: '/logout' } )
    end
  end 
end  
