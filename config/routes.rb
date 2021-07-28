Rails.application.routes.draw do
  get 'dashboard/index', as: :dashboard
  resources :reminders
end
