class Show < ActiveRecord::Base
  
  belongs_to :network
  has_many :characters
  has_many :actors 
  
  def actors_list
    self.actors.collect do |act|
      "#{act.name} - #{act.show.name}"
    end
  end
  
end