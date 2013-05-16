class Task < ActiveRecord::Base
  attr_accessible :name

  has_many :steps, :dependent => :delete_all
end
