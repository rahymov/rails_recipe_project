class RecipesController < ApplicationController
  before_action :set_paramsm only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , except: [:show, :index]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
		if @recipe.save
			redirect_to @recipe
		else
			render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render 'edit'
		end
  end
  def destroy
    @recipe.destroy
    redirect_to root_path, notice: "Successfully deleted recipe"
  end

  private
    def set_params
      @recipe = Recipe.find(params[:id])
    end
    def recipe_params
      params.require(:recipe).permit(:name, :description, :user_id)
    end
end
