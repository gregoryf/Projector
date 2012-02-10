class Role < ActiveRecord::Base
  
  belongs_to :project
  belongs_to :person
  belongs_to :status
  
  validates_presence_of :project_id
  validates_presence_of :person_id
  validates_presence_of :status_id
  validates_presence_of :title

  validates :person_id, 
            :uniqueness => { :scope => :project_id, 
                             :message => "Person already assigned to project!" }
end
