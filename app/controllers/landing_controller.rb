class LandingController < ApplicationController
  def index
    @eventos1a3 = Evento.ultimos(0,3)
    @eventos4a6 = Evento.ultimos(3,3)
    
  end
end
