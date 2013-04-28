require 'active_record'
require 'Chirpable'
require 'spec_helper'

describe Chirpable do

  context "when extended" do
    it "should define associations and callbacks when extended" do
      mock_model "Chirpy"
      Chirpy.should_receive(:has_many).with(:chirps,:as => :chirpable)
      Chirpy.should_receive(:after_save).with(:record_chirp)
      
      Chirpy.extend Chirpable    
      Chirpy.class_exec{act_as_chirpable}
    end
  end

end
