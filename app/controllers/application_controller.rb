class ApplicationController < ActionController::API
  acts_as_token_authentication_handler_for User
  ## Adapted from https://github.com/gonzalo-bulnes/simple_token_authentication
end
