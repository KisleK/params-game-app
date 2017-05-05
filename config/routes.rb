Rails.application.routes.draw do
get '/params_game' => 'params_games#query'
get '/guess' => 'params_games#guess'

get '/segement_guess/:submission' => 'params_games#segement_guess'

get '/form_show_params' => 'params_games#form_show'
post '/form_send_params' => 'params_games#form_send'

get '/number_show_params' => 'params_games#number_show'
post '/number_send_params' => 'params_games#number_send'
end
