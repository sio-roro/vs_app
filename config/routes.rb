Rails.application.routes.draw do
  
 
  devise_for :users
  root 'hello#index'
  resources :posts

  post "vote/create/:post_id/:choice"=>"votes#create",as:'vote_create'

  post "comment/create/:post_id"=>"comments#create",as:'post_comments'
  delete "comment/destroy/:post_id"=>"comments#destroy",as:"comment_destroy"

  resources :users, :only => [:show]

  post "relationship/:id"=>"relationships#create",as:"relationship_create"
  delete "relationship/:id"=>"relationships#destroy",as:"relationship_destroy"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
