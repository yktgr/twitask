Rails.application.routes.draw do
  resources "twiapps" do
      collection do
          post :confirm
          get  :top
      end
    end
end
