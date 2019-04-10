Rails.application.routes.draw do

	scope :api do 
  		resources :anagramas
  	end
  	
    scope :api do
		resources :categories
	end
end
