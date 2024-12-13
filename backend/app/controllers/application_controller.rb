class ApplicationController < ActionController::API
  # binding.pry
  include DeviseTokenAuth::Concerns::SetUserByToken
end
