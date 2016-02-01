class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :visitor

 
  USER_TASK = Visitor.ids

  validates :visitor_id, inclusion: { in: USER_TASK }


  def vis_name
  	Visitor.find(self.visitor_id).name
  end
end
