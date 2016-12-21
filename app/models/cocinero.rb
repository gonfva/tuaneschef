class Cocinero < ApplicationRecord
  has_many :votos
  mount_uploader :foto, PlatoFotoUploader
end
