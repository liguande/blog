Rails.application.routes.draw do
	root "user#index"
	get 'user/regest' => "user#regest",:as => "regest"
	get "user/login" => "user#login" ,:as => "login"
	post "user/create" => "user#create",:as => "create"
	post "user/login_session" => "user#login_session",:as => "login_session"
	get "user/logout" => "user#logout",:as => "logout"
	get "user/delete/:id" => "user#delete",:as => "delete"
	get "user/change/:id" => "user#change",:as => "change"
	post "user/update/:id" => "user#update",:as => "update"
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
