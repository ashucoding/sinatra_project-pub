class Car < ActiveRecord::Base
  belongs_to :user

  validates :make, :model, :color, :year, :presence => true
  validates :year, numericality:{ only_integer: true}
end
