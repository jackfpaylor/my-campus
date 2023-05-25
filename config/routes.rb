Rails.application.routes.draw do
  resources :student_omegas
  get 'home/users'
  get 'home/login'
  get 'home/about'
  get 'home/register'
  root 'home#index'
end