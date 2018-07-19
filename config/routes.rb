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
	get "user/user_center" => "user#user_center",:as => "user_center"
	

	get 'note/index' => "note#index",:as => "note_index"
	get 'note/new' => "note#new",:as =>"note_new"
	post "note/create" => "note#create",:as => "note_create"
	get "note/delete/:id" => "note#delete",:as => "note_delete"
	get 'note/change/:id' => "note#change",:as => "note_change"
	post "note/update/:id" => "note#update",:as => "note_update"
	get "note/show/:id" => "note#show",:as => "note_show"
	post "note/:note_id/comment/create" => "comment#create",:as => "comment_create"
	get "note/:note_id/comment/delete/:comment_id" => "comment#delete",:as =>"comment_delete"

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
