Rails.application.routes.draw do
  resources :events do 
    collection do
      get "forestgreen"
      get "aquamarine"
      get "darkslateblue"
      get "darkviolet"
      get "deepskyblue"
      get "lightcoral"
      get "lightsalmon"
      get "purple"
    end
  end

  get 'dashboard/index', as: :dashboard
  resources :reminders
end
