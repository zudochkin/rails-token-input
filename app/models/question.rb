class Question < ActiveRecord::Base
  attr_accessor :location

  belongs_to :questionable, polymorphic: true
  attr_accessible :name, :questionable_id, :questionable_type, :location

  before_save do
    return unless self.location =~ /_/
    location_id, location_type = self.location.split('_')
    self.questionable_id   = location_id   unless location_id.nil?
    self.questionable_type = location_type unless location_type.nil?
  end
end
