class Application < Sinatra::Base
  # Write your code here!
  get '/' do
    erb :index
  end

  # This enables us to expose the view/greet.erb resource which serves HTML content
  post '/greet' do
    erb :greet
  end
end