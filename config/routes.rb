Rails.application.routes.draw do
  get '/twiapps', to: 'twiapps#top'
  get '/twiapps/index', to: 'twiapps#index'
  resources "twiapps", except: [:index] do
    collection do
          post :confirm
      end
    end
end
