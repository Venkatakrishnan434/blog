Rails.application.routes.draw do
 resources :articles
 root 'articles#index'
 get 'welcome/index'


resources :articles do
  resources :comments
end

end
