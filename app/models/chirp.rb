class Chirp < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :chirpable, :polymorphic => true
  attr_accessible :title, :body, :chirpable_type, :chirpable_id
end
