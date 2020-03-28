class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :meal_type, :cuisine
  has_many :meals
end
