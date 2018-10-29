Rails.application.routes.draw do
  devise_for :users
  get "/registration", to: "registrations#new"
  root "site#index"
end
