class Step < ActiveRecord::Base
  attr_accessible :order, :todo
  belongs_to :task

  validates :order, :numericality => {:greater_than_or_equal_to => 1}
  validates_uniqueness_of :order, :scope => :task_id
end
