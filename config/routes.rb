Rails.application.routes.draw do
	root "user#index"
	get 'user/regest' => "user#regest",:as => "regest"
	get "user/login" => "user#login" ,:as => "login"
	get "user/create" => "user#create",:as => "create"
	get "user/login_session" => "user#login_session",:as => "login_session"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
