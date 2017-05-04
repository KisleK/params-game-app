Rails.application.routes.draw do
get '/params_game' => 'params_games#query'
get '/guess' => 'params_games#guess'

get '/segement_guess/:wildcard' => 'params_games#segement_guess'
end
