Rails.application.routes.draw do   
  post 'welcome/index'
  
  resources :articles do
    resources :comments
  end

  resources :playlists

  root 'welcome#index'
  #http://guides.rubyonrails.org/routing.html
end
