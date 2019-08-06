require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/pig' do 
        @x = PigLatinizer.new(params[:str])
        erb :result
    end

end