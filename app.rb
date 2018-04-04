require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |params|
        Ship.new(params)
      end

      @ships = Ship.all

      erb :show
    end
  end
end
