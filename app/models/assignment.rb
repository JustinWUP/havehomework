class Assignment < ActiveRecord::Base
  attr_accessible :name, :description
  belongs_to :assignable, polymorphic: true
end
