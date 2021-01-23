Rails.application.routes.draw do
  get 'set_language/english'
  get 'set_language/german'
  # get 'contact/index'
 scope '(:locale)', locale: /en|de/ do
    root :to => 'contacts#new'
    resources :contacts, only: [:new, :create]
  end  
end
