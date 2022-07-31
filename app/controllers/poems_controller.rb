class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  
  def show
  end

  def new
    @poem = Poem.new
  end
  
  def create 
    @poem = Poem.new(poem_params)
    @poem.save
    redirect_to poems_path
  end
  
  private
  def poem_params
    params.require(:poem).permit(:body, :image)
  end
end