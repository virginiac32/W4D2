class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = selected_cat

    if @cat
      render :show
    else
      render json: ["Could not find cat"], status: 404
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      # show user the cat show page
      redirect_to cat_url(@cat)
    else
      # show user the new cat form
      render :new
    end
  end

  def edit
    @cat = selected_cat
    render :edit
  end

  def update
    @cat = selected_cat

    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render :edit
    end
  end

  private

  def selected_cat
    Cat.find_by(id: params[:id])
  end

  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end

end
