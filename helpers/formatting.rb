require 'rack/utils'
require 'faker'

helpers do
  def h content
    Rack::Utils::escape_html content
  end  

  def fake_sentance
    Faker::Lorem.sentence
  end  
end