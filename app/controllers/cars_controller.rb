class CarsController < ApplicationController

  #get '/cars' do
  #  "logged_in as #{session[:email]}"
  #end

  get '/cars' do
    "A list of publically available posts"
    @cars=Car.all
    erb :"cars/index.html"
  end

  get '/cars/new' do
    if !logged_in?
      redirect "/login"
    else
      erb :"cars/new.html"
    end
  end

  post '/cars' do
    @car = Car.new
    @car.make = params[:make]
    @car.model = params[:model]
    @car.color = params[:color]
    @car.year = params[:year]
    if @car.save
      redirect '/cars'
    else
      erb :"cars/new.html"
    end
  end

  get '/cars/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
      if @car=current_user.cars.find_by(params[:id])
        erb :"/cars/edit.html"
      else
        redirect "/cars"
      end
    end
  end


  delete "/cars/:id" do
    if !logged_in?
      redirect "/login"
    else
      if @car=current_user.cars.find_by(params[:id])
    @car.destroy
    redirect '/cars'
      else
        redirect "/cars"
      end
    end
  end

get '/cars/:id'  do
  @car=Car.find(params[:id])
  erb :"cars/show.html"
end

end
