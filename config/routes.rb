Rails.application.routes.draw do
  resources :events
  get 'dashboard/index', as: :dashboard
  resources :reminders
end
