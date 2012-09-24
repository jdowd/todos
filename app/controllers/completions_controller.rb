class CompletionsController < ApplicationController
  
  def create
    current_user.todos.find(params[:todo_id]).mark_complete
    redirect_to todos_path
  end
  
  def destroy
    current_user.todos.find(params[:todo_id]).mark_incomplete
    redirect_to todos_path
  end

end