class Mensaje < ActiveRecord::Base
  belongs_to :tw_usuario
  has_one :fecha
  has_one :texto
end
