class ApplicationController < ActionController::API
  include DrySerialization::FastJsonapi
  include DrySerialization::Concerns::SerializationHelper
  include Secured
  
end
