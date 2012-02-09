class Project < ActiveRecord::Base
  
  has_many :roles, :dependent => :destroy

  validates :title, :presence => true
  
  accepts_nested_attributes_for :roles
end
