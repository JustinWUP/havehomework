class Subject < ActiveRecord::Base
  attr_accessible :name, :description
  has_and_belongs_to_many :users
  has_many :assignments, as: :assignable

  def as_json(options={})
	super(:only => [:name,:id])
  end
end
