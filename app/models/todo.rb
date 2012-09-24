class Todo < ActiveRecord::Base
  attr_accessible :title
  
  def user=(user)
    self.owner_email = user.email
  end
  
  def completed?
    completed_at?
  end
  
  def mark_complete
    self.completed_at = Time.now
    save
  end
  
  def mark_incomplete
    self.completed_at = nil
    save
  end
  
end
