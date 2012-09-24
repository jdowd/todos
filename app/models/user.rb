class User
  attr_reader :email
  
  def todos
    Todo.where(owner_email: @email)
  end
  
  def initialize(email)
    @email = email
  end
  
end