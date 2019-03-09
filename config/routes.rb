Rails.application.routes.draw do
  get '/', to: 'home#top'
  get '/login', to: 'home#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
