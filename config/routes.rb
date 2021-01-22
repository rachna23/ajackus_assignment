Rails.application.routes.draw do
  get 'contact/index'
  root :to => 'contact#index'
end
