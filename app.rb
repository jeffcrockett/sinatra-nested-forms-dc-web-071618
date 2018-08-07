require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, 'views/pirates'

    get '/' do
      erb :root
    end

    get '/new' do 
      erb :new
    end

    post '/pirates' do 
      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      params[:pirate][:ships].each do |ship|
        @pirate.ships << Ship.new(name: ship[:name], type: ship[:type], booty: ship[:booty])
      end
      erb :show
    end

  end
end
