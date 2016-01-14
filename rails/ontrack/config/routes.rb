Rails.application.routes.draw do

  
  resources :projects do
  	resources :tasks
		collection do
	     get 'showall'
	  end
  end

  root to: 'visitors#index'

end
