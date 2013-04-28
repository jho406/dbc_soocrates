module Chirpable
  def act_as_chirpable
    self.class_exec{
      has_many :chirps,:as => :chirpable
      after_save :record_chirp
    }    
    include InstanceMethods
  end

  module InstanceMethods
    def short_title
      self.class.to_s
    end

    def short_body
      self.body.to_s
    end

    private
    def record_chirp
      self.chirps.create(:title=>self.short_title, :body=>self.short_body)
    end
  end
end
   
ActiveRecord::Base.extend Chirpable
