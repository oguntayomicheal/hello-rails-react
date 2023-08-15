class Api::GreetingsController < ApplicationController
    def index
        @greeting = Greeting.all.order('RANDOM()').limit(1)
        render json: @greeting
      end
end
