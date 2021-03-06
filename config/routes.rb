Rails.application.routes.draw do
  root to: 'toppages#index'

#自動生成されたため削除
#  get 'users/index'
#  get 'users/show'
#  get 'users/new'
#  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :tasks
 #一旦すべてのアクションをそのままルートする。

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'


 get 'newsignup', to: 'users#new'
 resources :users, only: [:index, :show, :new, :create]

end
