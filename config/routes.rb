Rails.application.routes.draw do

  	get 'welcome/index'
  	root to: "welcome#index"

	resources :rooms, :path => '/r' , only: [:show, :destroy, :create] do 
		resources :users, only: [:new, :create]
	end

 	get 'search' => 'rooms#search'

	resources :messages, only: [:create]

	mount ActionCable.server => '/cable'

end
