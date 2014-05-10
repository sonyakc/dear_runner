class Runner < ActiveRecord::Base
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates_presence_of :first_name, :last_name, :gender, :level, :age

end
