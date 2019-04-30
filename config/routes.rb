Rails.application.routes.draw do
  get '/' ,to: 'twiapps#top'
  resources "twiapps" do
      collection do
          post :confirm
      end
    end
end
