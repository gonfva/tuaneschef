class Voto < ApplicationRecord
  belongs_to :cocinero
  belongs_to :user
  
end
