class RecipesController < ApplicationController
  before_action :set_recipes, only: [:index]
  before_action :read_recipes, only: [:show]

  def index; end

  def show
    @recipe = if @recipes.present?
      @recipes.find { |recipe| recipe.id.eql?(params[:id]) }
    else
      CONTENTFUL.entry(params[:id])
    end
  end

  private

  def set_recipes
    @recipes = Rails.cache.fetch('recipes_data', expires_in: 7.days) do
      CONTENTFUL.entries(content_type: 'recipe')
    end
  end

  def read_recipes
    @recipes = Rails.cache.read('recipes_data')
  end
end
