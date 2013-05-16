class Step < ActiveRecord::Base
  belongs_to :task
  attr_accessible :order, :todo

  validates :order, :numericality => {:greater_than_or_equal_to => 1}
  validates :order, :uniqueness => true
end
