class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  
  def show
    @poems = Poem.all
  end

  def new
    @poem = Poem.new
  end
  
  def create 
    @poem = Poem.new(poem_params)
    if @poem.save
      redirect_to poems_path
    else
      render "new"
    end
    
  end
  
  private
  def poem_params
    params.require(:poem).permit(:id, :body, :image)
  end
end