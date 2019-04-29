class TwiappsController < ApplicationController
    
    def index
        @twisays = Twi.all
    end
    
    def new
        @twisay = Twi.new
    end
    
    def create
        @twisay = Twi.new(twi_params)
        @twisay.save
    end
    
    def edit
    end
    
    def update

    end
            
            
            
private 

def twi_params
  params.require(:twi).permit(:content)
end

def set_twi
  @twi = Twi.find(params[:id])
end


end
