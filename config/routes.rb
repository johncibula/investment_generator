Rails.application.routes.draw do
  root 'report#index'

  get 'report/new'

  get 'report/create'

  get 'report/delete'

  get 'report/destroy'

  get 'value_chains/show'


  resources :industries, :only => [:index,:show] do
    resources :value_chains, :only => [:index,:show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
