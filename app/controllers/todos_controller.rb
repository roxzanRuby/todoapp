class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(todo_params) #white list for strong params
    if @todo.save #after creating we save it to the database
      flash[:notice] = "Todo was created successfully!"
      redirect_to todo_path(@todo)  #then redirect to todos#show
    else 
      render 'new'
    end
  end
  
  def show
    #we are going to create an instance variable, so we can access it in our show view
    @todo = Todo.find(params[:id]) #finding url 'id' https://rubyonrailstraining-roxzan.c9users.io/todos/10
  end
  
  #in order to edit a todo we need to find it - so we use the show action above
  def edit
    @todo = Todo.find(params[:id])
  end
  
  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      flash[:notice] = "Todo was successfully updated!"
      redirect_to todo_path(@todo)
    else
      render 'edit'
    end
  end

  private #anything you put under this is only for this controller
    
    def todo_params #this is white listing - what we allowing our application to recieve from
      params.require(:todo).permit(:name, :description)
      #above is a hash this is a combo of {key: value}
    end
  
end