Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do
    namespace :v1 do
      resources :validation_codes, only:[:create]
      resource :session ,only:[:create , :destroy]
      resources :me, only:[:show]
      resources :itmes 
      resources :tags
    end
  end

end
