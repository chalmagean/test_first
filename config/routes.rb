Rails.application.routes.draw do
  get "/registration", to: "registrations#new"
  root "site#index"
end
