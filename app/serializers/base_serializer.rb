class BaseSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :lower_camel

end
