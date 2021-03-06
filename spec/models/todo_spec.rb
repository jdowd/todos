require 'spec_helper'

describe Todo, '#user=' do
  it "assigns the passed object email as owner_email" do
    todo = Todo.new
    todo.user = User.new('person@example.com')
    expect(todo.owner_email).to eq 'person@example.com'
  end
end

describe Todo, '#completed?' do
  it "returns true when completed_at is set" do
    todo = Todo.new
    todo.completed_at = Time.now
    expect(todo).to be_completed
  end

  it "returns false when completed_at is nil" do
    todo = Todo.new
    expect(todo).to_not be_completed
  end
end

describe Todo, '#mark_complete' do
  it "completes the todo" do
    todo = Todo.new
    todo.mark_complete
    expect(todo).to be_completed
  end
end

describe Todo, '#mark_incomplete' do
  it "changes the todo to incomplete" do
    todo = Todo.new
    todo.mark_incomplete
    expect(todo).to_not be_completed
  end
end