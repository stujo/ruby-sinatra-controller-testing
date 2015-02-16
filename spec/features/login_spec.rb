# displays_home_page_spec.rb

feature 'Unauthenticated user can login from home page' do

  let!(:user){ User.create!(:email => 'foo@example.com') }

  xscenario 'they see welcome text' do
    visit '/'

    click_link 'Login', match: :first

    fill_in 'login[email]', with: 'foo@example.com'
    
    click_button 'Login'
  
    expect(page).to have_css 'h1', 'Secret Items'

    click_link 'Logout', match: :first
  end
end