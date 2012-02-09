class Person < ActiveRecord::Base

  has_many :roles
  has_many :projects, :through => :roles

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  
  def name
    "#{first_name} #{last_name}"
  end  
end
