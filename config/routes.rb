Rails.application.routes.draw do
	root "user#index"
	get 'user/regest' => "user#regest",:as => "regest"
	get "user/login" => "user#login" ,:as => "login"
	post "user/create" => "user#create",:as => "create"
	post "user/login_session" => "user#login_session",:as => "login_session"
	get "user/logout" => "user#logout",:as => "logout"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
