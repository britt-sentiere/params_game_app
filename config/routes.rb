Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'corgis#my_name'
    get '/whats_in_a_name' => 'corgis#check_word'
    get '/string_guess' => 'corgis#string_guess'
    post '/body_params' => 'corgis#body_params'
  end 
end
