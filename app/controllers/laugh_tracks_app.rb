class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @average_age = Comedian.average_age
    @comedians = Comedian.all
    erb :"comedians/index"
  end
end
