require_relative './config/environment'

require './config/environment'


use Rack::MethodOverride
use SessionsController
use CarsController
use UsersController
run ApplicationController
