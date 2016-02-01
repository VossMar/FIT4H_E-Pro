Rails.application.routes.draw do

  root 'projects#index'
  resources 'sessions'
  resources 'visitors'

  get 'logout' => "sessions#destroy"

  resources :projects do
  	resources :tasks
		collection do
	     get 'showall'
	  end
  end


end
