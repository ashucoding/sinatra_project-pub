class SessionsController < ApplicationController

  get '/' do
    redirect '/login'
  end

  get '/login' do
    erb :"sessions/login.html"
  end

  post '/sessions' do
    login(params[:email], params[:password])
    redirect '/cars'
  end

  get '/logout' do
    logout
   redirect '/login'
  end

  post '/sessions' do
    session[:email] = params[:email]
    redirect '/posts'
  end
end
