class TwiappsController < ApplicationController
    before_action :set_twi, only: [:edit,:update,:destroy]
    def index
        @twisdata = Twi.all
    end
    
    def new
        @twidata = Twi.new
    end
    
    def create
        @twidata = Twi.new(twi_params)
        if @twidata.save
          redirect_to twiapps_path, notice: "投稿しました！"
        else
          render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @twidata.update(twi_params)
            redirect_to twiapps_path, notice:"投稿を編集しました"
        else
            render 'edit'
        end
    end
            
    def confirm
      @twidata = Twi.new(twi_params)
      render :new if @twidata.invalid?
    end        
            
private 

def twi_params
  params.require(:twi).permit(:content)
end

def set_twi
  @twidata = Twi.find(params[:id])
end


end
