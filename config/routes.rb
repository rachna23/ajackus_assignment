Rails.application.routes.draw do
  scope '(:locale)', locale: /en|de/ do
    root :to => 'contacts#new'
    resources :contacts, only: [:new, :create]
  end
  get 'en/contacts', to:  redirect('/')
  get 'de/contacts', to:  redirect('/')
end
