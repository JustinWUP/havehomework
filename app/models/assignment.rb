class Assignment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :assignable, polymorphic: true
end
