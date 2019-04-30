Rails.application.routes.draw do
  resources "twiapps" do
      collection do
          post :confirm
      end
    end
     get '/twiapps/:top', to: 'twiapps#top'
end
