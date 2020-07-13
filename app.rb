require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
    get "/" do 
        erb :user_input
    end

    post '/piglatinize' do 
        # binding.pry
        @user_input = params["user_phrase"]
        @text = PigLatinizer.new.piglatinize(params["user_phrase"])
        erb :user_result     
    end
end