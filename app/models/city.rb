class City < ActiveRecord::Base
  has_many :questions, as: :questionable
  attr_accessible :name

  def id_with_class_name
    "#{ id }_#{ self.class.name }"
  end
end
