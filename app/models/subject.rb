class Subject < ActiveRecord::Base
  attr_accessible :title, :description
  has_and_belongs_to_many :users
  has_many :assignments, as: :assignable
end
