class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])

    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    @cat = Cat.new
    @colors = Cat::VALID_COLORS
    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
        redirect_to cat_url(@cat) # do not need to specify id. rails knows
    else
      redirect_to new_cat_url
    end
  end

  def edit
    @colors = Cat::VALID_COLORS
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])

    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render :edit
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex,:description)
  end
end
